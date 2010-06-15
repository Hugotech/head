/*
 * Copyright (c) 2005-2010 Grameen Foundation USA
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * See also http://www.apache.org/licenses/LICENSE-2.0.html for an
 * explanation of the license and how it is applied.
 */

package org.mifos.accounts.fund.persistence;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;
import static org.junit.matchers.JUnitMatchers.*;

import java.util.List;
import java.util.Locale;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mifos.accounts.fund.business.FundBO;
import org.mifos.application.master.business.FundCodeEntity;
import org.mifos.application.master.business.MifosCurrency;
import org.mifos.config.Localization;
import org.mifos.framework.TestUtils;
import org.mifos.framework.components.audit.util.helpers.AuditConfigurtion;
import org.mifos.framework.hibernate.helper.StaticHibernateUtil;
import org.mifos.framework.util.StandardTestingService;
import org.mifos.framework.util.helpers.DatabaseSetup;
import org.mifos.framework.util.helpers.IntegrationTestObjectMother;
import org.mifos.framework.util.helpers.Money;
import org.mifos.service.test.TestMode;
import org.mifos.test.framework.util.DatabaseCleaner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/integration-test-context.xml",
                                    "/org/mifos/config/resources/hibernate-daos.xml"})
public class FundDaoHibernateIntegrationTest {

    @Autowired
    private FundDao fundDao;

    @Autowired
    private DatabaseCleaner databaseCleaner;

    private FundBO fund;
    private FundCodeEntity fundCode;
    private String fundName;

    private static MifosCurrency oldDefaultCurrency;

    @BeforeClass
    public static void initialiseHibernateUtil() {

        Locale locale = Localization.getInstance().getMainLocale();
        AuditConfigurtion.init(locale);

        oldDefaultCurrency = Money.getDefaultCurrency();
        Money.setDefaultCurrency(TestUtils.RUPEE);
        new StandardTestingService().setTestMode(TestMode.INTEGRATION);
        DatabaseSetup.initializeHibernate();
    }

    @AfterClass
    public static void resetCurrency() {
        Money.setDefaultCurrency(oldDefaultCurrency);
    }

    @After
    public void cleanDatabaseTablesAfterTest() {
        // NOTE: - only added to stop older integration tests failing due to brittleness
        databaseCleaner.clean();
    }

    @Before
    public void cleanDatabaseTables() throws Exception {
        databaseCleaner.clean();

        fundCode = new FundCodeEntity("55");
        fundName = "testFund";
        fund = new FundBO(fundCode, fundName);
        IntegrationTestObjectMother.createFundCode(fundCode);
        IntegrationTestObjectMother.createFund(fund);
    }

    @Test
    public void shouldSaveFund() throws Exception {

        // setup
        FundCodeEntity newfundCode = new FundCodeEntity("99");
        IntegrationTestObjectMother.createFundCode(newfundCode);

        FundBO newfund = new FundBO(newfundCode, "testFundSave");

        // exercise test
        StaticHibernateUtil.startTransaction();
        fundDao.save(newfund);
        StaticHibernateUtil.commitTransaction();

        assertThat(newfund.getFundId(), is(notNullValue()));
    }

    @Test
    public void shouldUpdateFund() throws Exception {

        StaticHibernateUtil.startTransaction();
        fundDao.update(fund, "newFundName");
        StaticHibernateUtil.commitTransaction();

        assertThat(fund.getFundName(), is("newFundName"));
    }

    @Test
    public void shouldFindFundById() throws Exception {

        FundBO returnedFund = fundDao.findById(fund.getFundId());

        assertThat(returnedFund, is(fund));
    }

    @Test
    public void shouldFindFundByName() throws Exception {

        FundBO returnedFund = fundDao.findByName(fundName);

        assertThat(returnedFund, is(fund));
    }

    @Test
    public void shouldFindAllExistingFundCode() throws Exception {

        List<FundCodeEntity> returnedFund = fundDao.findAllFundCodes();

        assertThat(returnedFund, hasItem(fundCode));
        assertThat(returnedFund.size(), is(6));
    }

    @Test
    public void shouldFindAllExistingFunds() throws Exception {

        List<FundBO> returnedFund = fundDao.findAllFunds();

        assertThat(returnedFund, hasItem(fund));
        assertThat(returnedFund.size(), is(6));
    }

    @Test
    public void shouldReturnCountOfAllFundsWithName() throws Exception {

        int returnedFunds = fundDao.countOfFundByName(fundName);

        assertThat(returnedFunds, is(1));
    }
}