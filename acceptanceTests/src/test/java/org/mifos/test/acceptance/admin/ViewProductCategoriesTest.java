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
package org.mifos.test.acceptance.admin;

import org.mifos.framework.util.DbUnitUtilities;
import org.mifos.test.acceptance.framework.AppLauncher;
import org.mifos.test.acceptance.framework.MifosPage;
import org.mifos.test.acceptance.framework.UiTestCaseBase;
import org.mifos.test.acceptance.framework.admin.AdminPage;
import org.mifos.test.acceptance.framework.admin.ViewProductCategoriesPage;
import org.mifos.test.acceptance.remote.InitializeApplicationRemoteTestingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;


@ContextConfiguration(locations = { "classpath:ui-test-context.xml" })
@Test(sequential = true, groups = {"acceptance","ui", "smoke"})
public class ViewProductCategoriesTest extends UiTestCaseBase {

    private AppLauncher appLauncher;

    @Autowired
    private DbUnitUtilities dbUnitUtilities;
    @Autowired
    private InitializeApplicationRemoteTestingService initRemote;

    @Override
    @SuppressWarnings("PMD.SignatureDeclareThrowsException")
    // one of the dependent methods throws Exception
    @BeforeMethod
    public void setUp() throws Exception {
        super.setUp();
        appLauncher = new AppLauncher(selenium);
    }

    @AfterMethod
    public void tearDown() {
        (new MifosPage(selenium)).logout();
    }

    @SuppressWarnings("PMD.SignatureDeclareThrowsException")

    @Test
    // http://mifosforge.jira.com/browse/MIFOSTEST-649
    public void verifyViewProductCategoriesTest()throws Exception {
        //Given
        initRemote.dataLoadAndCacheRefresh(dbUnitUtilities, "acceptance_small_001_dbunit.xml", dataSource, selenium);

        //When
        AdminPage adminPage = loginAndGoToAdminPage();
        ViewProductCategoriesPage viewProductCategoriesPage =
            adminPage.navigateToViewProductCategoriesPage();

        //Then
        String[] expectedData = new String[]{ //TODO add support for other languages than English
                "View product categories",
                "Click on a category below to view details and make changes or define new product category",
                "Loan",
                "Other",
                "Savings",
                "Other"
        };
        viewProductCategoriesPage.verifyProductCategories(expectedData);
    }

    private AdminPage loginAndGoToAdminPage() {
        return appLauncher.launchMifos().loginSuccessfullyUsingDefaultCredentials().navigateToAdminPage();
    }
}


