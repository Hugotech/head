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

package org.mifos.ui.core.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;

@SuppressWarnings("PMD")
@edu.umd.cs.findbugs.annotations.SuppressWarnings(value="SE_NO_SERIALVERSIONID", justification="required for spring web flow storage at a minimum - should disable at filter level and also for pmd")
public class UserFormBean implements Serializable {

    // office
    private Long officeId;
    private String officeName;

    // user details
    private String firstName;
    private String middleName;
    private String secondLastName;
    private String lastName;
    private String governmentId;
    private String email;

    private Number dateOfBirthDay;
    private Number dateOfBirthMonth;
    private Number dateOfBirthYear;

    private String selectedGender;
    private Map<String, String> genderOptions = new LinkedHashMap<String, String>();

    private String selectedMaritalStatus;
    private Map<String, String> maritalStatusOptions = new LinkedHashMap<String, String>();

    private String selectedPreferredLanguage;
    private Map<String, String> preferredLanguageOptions = new LinkedHashMap<String, String>();

    private Number mfiJoiningDateDay;
    private Number mfiJoiningDateMonth;
    private Number mfiJoiningDateYear;

    // address details
    private AddressBean address = new AddressBean();

    // permissions
    private String selectedUserTitle;
    private Map<String, String> userTitleOptions = new LinkedHashMap<String, String>();

    private String selectedUserHierarchy;
    private Map<String, String> userHierarchyOptions = new LinkedHashMap<String, String>();

    private String[] availableRoles;
    private Map<String, String> availableRolesOptions = new LinkedHashMap<String, String>();

    private String[] selectedRoles;
    private Map<String, String> selectedRolesOptions = new LinkedHashMap<String, String>();

    // login info
    private String username;
    private String password;
    private String confirmedPassword;

    // preview fields
    private DateTime dateOfBirth;
    private Integer age;
    private DateTime mfiJoiningDate;
    private List<String> selectedRoleNames;
    private String maritalStatusName = "";
    private String genderName = "";
    private String preferredLanguageName = "";
    private String userTitleName = "";
    private String userHierarchyName = "";

    public String getOfficeName() {
        return this.officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public Long getOfficeId() {
        return this.officeId;
    }

    public void setOfficeId(Long officeId) {
        this.officeId = officeId;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return this.middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getSecondLastName() {
        return this.secondLastName;
    }

    public void setSecondLastName(String secondLastName) {
        this.secondLastName = secondLastName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGovernmentId() {
        return this.governmentId;
    }

    public void setGovernmentId(String governmentId) {
        this.governmentId = governmentId;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Number getDateOfBirthDay() {
        return this.dateOfBirthDay;
    }

    public void setDateOfBirthDay(Number dateOfBirthDay) {
        this.dateOfBirthDay = dateOfBirthDay;
    }

    public Number getDateOfBirthMonth() {
        return this.dateOfBirthMonth;
    }

    public void setDateOfBirthMonth(Number dateOfBirthMonth) {
        this.dateOfBirthMonth = dateOfBirthMonth;
    }

    public Number getDateOfBirthYear() {
        return this.dateOfBirthYear;
    }

    public void setDateOfBirthYear(Number dateOfBirthYear) {
        this.dateOfBirthYear = dateOfBirthYear;
    }

    public String getSelectedMaritalStatus() {
        return this.selectedMaritalStatus;
    }

    public void setSelectedMaritalStatus(String selectedMaritalStatus) {
        this.selectedMaritalStatus = selectedMaritalStatus;
    }

    public Map<String, String> getMaritalStatusOptions() {
        return this.maritalStatusOptions;
    }

    public void setMaritalStatusOptions(Map<String, String> maritalStatusOptions) {
        this.maritalStatusOptions = maritalStatusOptions;
    }

    public String getSelectedPreferredLanguage() {
        return this.selectedPreferredLanguage;
    }

    public void setSelectedPreferredLanguage(String selectedPreferredLanguage) {
        this.selectedPreferredLanguage = selectedPreferredLanguage;
    }

    public Map<String, String> getPreferredLanguageOptions() {
        return this.preferredLanguageOptions;
    }

    public void setPreferredLanguageOptions(Map<String, String> preferredLanguageOptions) {
        this.preferredLanguageOptions = preferredLanguageOptions;
    }

    public Number getMfiJoiningDateDay() {
        return this.mfiJoiningDateDay;
    }

    public void setMfiJoiningDateDay(Number mfiJoiningDateDay) {
        this.mfiJoiningDateDay = mfiJoiningDateDay;
    }

    public Number getMfiJoiningDateMonth() {
        return this.mfiJoiningDateMonth;
    }

    public void setMfiJoiningDateMonth(Number mfiJoiningDateMonth) {
        this.mfiJoiningDateMonth = mfiJoiningDateMonth;
    }

    public Number getMfiJoiningDateYear() {
        return this.mfiJoiningDateYear;
    }

    public void setMfiJoiningDateYear(Number mfiJoiningDateYear) {
        this.mfiJoiningDateYear = mfiJoiningDateYear;
    }

    public String getSelectedUserTitle() {
        return this.selectedUserTitle;
    }

    public void setSelectedUserTitle(String selectedUserTitle) {
        this.selectedUserTitle = selectedUserTitle;
    }

    public Map<String, String> getUserTitleOptions() {
        return this.userTitleOptions;
    }

    public void setUserTitleOptions(Map<String, String> userTitleOptions) {
        this.userTitleOptions = userTitleOptions;
    }

    public String getSelectedUserHierarchy() {
        return this.selectedUserHierarchy;
    }

    public void setSelectedUserHierarchy(String selectedUserHierarchy) {
        this.selectedUserHierarchy = selectedUserHierarchy;
    }

    public Map<String, String> getUserHierarchyOptions() {
        return this.userHierarchyOptions;
    }

    public void setUserHierarchyOptions(Map<String, String> userHierarchyOptions) {
        this.userHierarchyOptions = userHierarchyOptions;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmedPassword() {
        return this.confirmedPassword;
    }

    public void setConfirmedPassword(String confirmedPassword) {
        this.confirmedPassword = confirmedPassword;
    }

    @edu.umd.cs.findbugs.annotations.SuppressWarnings(value="EI_EXPOSE_REP", justification="..")
    public String[] getAvailableRoles() {
        return this.availableRoles;
    }

    @edu.umd.cs.findbugs.annotations.SuppressWarnings(value="EI_EXPOSE_REP", justification="..")
    public void setAvailableRoles(String[] availableRoles) {
        this.availableRoles = availableRoles;
    }

    public Map<String, String> getAvailableRolesOptions() {
        return this.availableRolesOptions;
    }

    public void setAvailableRolesOptions(Map<String, String> availableRolesOptions) {
        this.availableRolesOptions = availableRolesOptions;
    }

    @edu.umd.cs.findbugs.annotations.SuppressWarnings(value="EI_EXPOSE_REP", justification="..")
    public String[] getSelectedRoles() {
        return this.selectedRoles;
    }

    @edu.umd.cs.findbugs.annotations.SuppressWarnings(value="EI_EXPOSE_REP", justification="..")
    public void setSelectedRoles(String[] selectedRoles) {
        this.selectedRoles = selectedRoles;
    }

    public Map<String, String> getSelectedRolesOptions() {
        return this.selectedRolesOptions;
    }

    public void setSelectedRolesOptions(Map<String, String> selectedRolesOptions) {
        this.selectedRolesOptions = selectedRolesOptions;
    }

    public AddressBean getAddress() {
        return this.address;
    }

    public void setAddress(AddressBean address) {
        this.address = address;
    }

    public String getSelectedGender() {
        return this.selectedGender;
    }

    public void setSelectedGender(String selectedGender) {
        this.selectedGender = selectedGender;
    }

    public Map<String, String> getGenderOptions() {
        return this.genderOptions;
    }

    public void setGenderOptions(Map<String, String> genderOptions) {
        this.genderOptions = genderOptions;
    }

    public void prepareForPreview() {
        this.dateOfBirth = new DateTime().withDate(this.dateOfBirthYear.intValue(), this.dateOfBirthMonth.intValue(), this.dateOfBirthDay.intValue());
        this.age = new DateTime().yearOfEra().getDifference(this.dateOfBirth);
        this.mfiJoiningDate = new DateTime().withDate(this.mfiJoiningDateYear.intValue(), this.mfiJoiningDateMonth.intValue(), this.mfiJoiningDateDay.intValue());

        if (StringUtils.isNotBlank(this.selectedMaritalStatus)) {
            this.maritalStatusName = this.maritalStatusOptions.get(this.selectedMaritalStatus);
        }

        this.genderName = this.genderOptions.get(this.selectedGender);

        if (StringUtils.isNotBlank(this.selectedPreferredLanguage)) {
            this.preferredLanguageName = this.preferredLanguageOptions.get(this.selectedPreferredLanguage);
        }

        if (StringUtils.isNotBlank(this.selectedUserTitle)) {
            this.userTitleName = this.userTitleOptions.get(this.selectedUserTitle);
        }

        this.userHierarchyName = this.userHierarchyOptions.get(this.selectedUserHierarchy);

        this.selectedRoleNames = new ArrayList<String>();
        if (this.selectedRoles != null) {
            for (String roleName : this.selectedRoles) {
                if (this.selectedRolesOptions.containsKey(roleName)) {
                    this.selectedRoleNames.add(this.selectedRolesOptions.get(roleName));
                } else if (this.availableRolesOptions.containsKey(roleName)) {
                    this.selectedRoleNames.add(this.availableRolesOptions.get(roleName));
                }
            }
        }
    }

    public String getDateOfBirth() {
        return org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy").withLocale(Locale.getDefault()).print(this.dateOfBirth);
    }

    public DateTime getDateOfBirthAsDateTime() {
        return this.dateOfBirth;
    }

    public Integer getAge() {
        return this.age;
    }

    public String getMfiJoiningDate() {
        return org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy").withLocale(Locale.getDefault()).print(this.mfiJoiningDate);
    }

    public DateTime getMfiJoiningDateAsDateTime() {
        return this.mfiJoiningDate;
    }

    public List<String> getSelectedRoleNames() {
        return this.selectedRoleNames;
    }

    public String getMaritalStatusName() {
        return this.maritalStatusName;
    }

    public String getGenderName() {
        return this.genderName;
    }

    public String getPreferredLanguageName() {
        return this.preferredLanguageName;
    }

    public String getUserTitleName() {
        return this.userTitleName;
    }

    public String getUserHierarchyName() {
        return this.userHierarchyName;
    }
}