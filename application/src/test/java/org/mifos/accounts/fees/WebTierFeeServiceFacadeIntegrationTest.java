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

package org.mifos.accounts.fees;

import java.util.List;

import junit.framework.Assert;

import org.mifos.accounts.fees.business.FeeBO;
import org.mifos.accounts.fees.servicefacade.FeeDto;
import org.mifos.accounts.fees.servicefacade.FeeServiceFacade;
import org.mifos.accounts.fees.servicefacade.WebTierFeeServiceFacade;
import org.mifos.accounts.fees.util.helpers.FeeCategory;
import org.mifos.application.master.business.LookUpValueEntity;
import org.mifos.application.meeting.util.helpers.RecurrenceType;
import org.mifos.framework.MifosIntegrationTestCase;
import org.mifos.framework.hibernate.helper.StaticHibernateUtil;
import org.mifos.framework.persistence.TestDatabase;
import org.mifos.framework.util.helpers.TestObjectFactory;

public class WebTierFeeServiceFacadeIntegrationTest extends MifosIntegrationTestCase {

    private FeeBO fee1;
    private FeeBO fee2;
    private FeeServiceFacade feeServiceFacade;

    public WebTierFeeServiceFacadeIntegrationTest() throws Exception {
        super();
    }

    @Override
    protected void setUp() throws Exception {
        TestDatabase.resetMySQLDatabase();
        fee1 = TestObjectFactory.createPeriodicAmountFee("CustomerFee1", FeeCategory.CENTER, "200",
                RecurrenceType.MONTHLY, Short.valueOf("2"), "Client");
        fee1.getFeeFrequency().getFeeFrequencyType().setLookUpValue(new LookUpValueEntity());
        fee2 = TestObjectFactory.createPeriodicAmountFee("ProductFee1", FeeCategory.LOAN, "400",
                RecurrenceType.MONTHLY, Short.valueOf("2"), "Loans");
        fee2.getFeeFrequency().getFeeFrequencyType().setLookUpValue(new LookUpValueEntity());
        StaticHibernateUtil.commitTransaction();
        feeServiceFacade = new WebTierFeeServiceFacade();
        super.setUp();
    }

    @Override
    protected void tearDown() throws Exception {
        TestObjectFactory.cleanUp(fee2);
        TestObjectFactory.cleanUp(fee1);
        StaticHibernateUtil.closeSession();
        super.tearDown();
    }

    public void testGetFeesForCustomer() throws Exception {
        List<FeeDto> feeList = feeServiceFacade.getCustomerFees();
        Assert.assertNotNull(feeList);
        Assert.assertEquals(1, feeList.size());
        Assert.assertEquals("CustomerFee1", feeList.get(0).getName());
        //Assert.assertEquals("Client", feeList.get(0).getCategoryType());
    }

    public void testRetrieveFeesForProduct() throws Exception {
        List<FeeDto> feeList = feeServiceFacade.getProductFees();
        Assert.assertNotNull(feeList);
        Assert.assertEquals(1, feeList.size());
        Assert.assertEquals("ProductFee1", feeList.get(0).getName());
        //Assert.assertEquals("Loans", feeList.get(0).getCategoryType());
    }
}
