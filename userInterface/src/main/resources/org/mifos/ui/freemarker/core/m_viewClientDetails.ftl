[#ftl]
[#--
* Copyright (c) 2005-2011 Grameen Foundation USA
*  All rights reserved.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
*  implied. See the License for the specific language governing
*  permissions and limitations under the License.
*
*  See also http://www.apache.org/licenses/LICENSE-2.0.html for an
*  explanation of the license and how it is applied.
--]

[@layout.header "mifos" /]
[#assign mifostag=JspTaglibs["/tags/mifos-html"]]

<script language="javascript">
	function photopopup(custId , custName, currentFlow){
		window.open("clientCustAction.do?method=showPicture&customerId="+ custId + "&displayName=" + custName+ "&currentFlowKey=" + currentFlow,null,"height=250,width=200,status=no,scrollbars=no,toolbar=no,menubar=no,location=no");
	}
</script>

[@widget.topNavigationNoSecurityMobile currentTab="ClientsAndAccounts" /]

<span id="page.id" title="ViewClientDetails"></span>
<div class="content">
	<form action="/mifos/clientCustAction.do">
		<div class="headingorange">
			<span id="viewClientDetails.heading">
				${clientInformationDto.clientDisplay.displayName}
			</span>
			<span class="fontnormal"> <!-- Edit center status link --> 
				[#if clientInformationDto.clientDisplay.customerStatusId != 6]
				<a id="viewClientDetails.link.editStatus" href="editCustomerStatusAction.do?method=loadStatus&customerId=${clientInformationDto.clientDisplay.customerId}&input=client&currentFlowKey=${Request.currentFlowKey}">
					[#assign arguments = ["${ConfigurationConstants.CLIENT}"]/]
					[@spring.messageArgs "client.editStatus" arguments/] 
				</a>
				[/#if]<br>
			</span>
		</div>
		<div>
			<font class="fontnormalRedBold">
				<span id="viewClientDetails.error.message">
				</span>
			</font>
		</div>
		<div>
			<div class="fontnormalbold">
				<span class="fontnormal">
					[@mifostag.MifosImage id="${clientInformationDto.clientDisplay.customerStatusId}" moduleName="org.mifos.customers.util.resources.customerImages" /] 
					<span id="viewClientDetails.text.status">
						${clientInformationDto.clientDisplay.customerStatusName}
					</span>
					[#list clientInformationDto.customerFlags as flagSet] 
						<span class="fontnormal"> 
							[#if clientInformationDto.clientDisplay.blackListed ]
								[@mifostag.MifosImage id="blackListed" moduleName="org.mifos.customers.client.util.resources.clientImages" /]
							[/#if] 
							${flagSet.statusFlagName} 
						</span>
					[/#list] 
				</span><br>
			<!-- System Id of the client --> 
			<span class="fontnormal">
				[@spring.message "client.SystemId" /]
			</span>
			<span id="viewClientDetails.text.globalcustnum" class="fontnormal">
				${clientInformationDto.clientDisplay.globalCustNum}
			</span><br>
			<!-- Loan Officer of the client --> 
			<span class="fontnormal"> 
				[@spring.message "client.LoanOff" /]
				${clientInformationDto.clientDisplay.loanOfficerName}
			</span><br>
		</div>
		<div id="Client.BusinessActivities">
			<div class="fontnormalbold">
				<span class="fontnormal"> 
					[@spring.message "client.BusinessActivities" /]
					${clientInformationDto.clientDisplay.businessActivities?if_exists}
				</span><br>
			</div>
		</div>
		<div>
			[#if !isPhotoFieldHidden]
			<td class="fontnormalbold">
					<span class="fontnormal"> 
							<a id="viewClientDetails.link.seePhoto" href="javascript:photopopup(${clientInformationDto.clientDisplay.customerId},
								 '${clientInformationDto.clientDisplay.loanOfficerName}', '${Request.currentFlowKey}')">
								[@spring.message "client.seephoto"/]
							</a>
					</span><br>
			[/#if]
		</div>
		<br/>
		<!--- Accounts Information Begins -->
		<div>
			<div>
				<span class="headingorange">
					[@spring.message "client.AccountHeading" /]
				</span>
				<!-- bug id 28004. Added if condition to show link to open accounts if only client is active-->
				[#if clientInformationDto.clientDisplay.customerStatusId == 3]
					<div class="headingorange">
						<span class="fontnormal">
							[@spring.message "client.AccountsLink" /]&nbsp; 
							<a id="viewClientDetails.link.newLoanAccount" href="createLoanAccount.ftl?customerId=${clientInformationDto.clientDisplay.customerId}&recordOfficeId=${UserContext.branchId}&recordLoanOfficerId=${UserContext.id}">
								[@spring.message "${ConfigurationConstants.LOAN}" /]
							</a> &nbsp;|&nbsp; 
							<a id="viewClientDetails.link.newSavingsAccount" href="createSavingsAccount.ftl?customerId=${clientInformationDto.clientDisplay.customerId}&recordOfficeId=${UserContext.branchId}&recordLoanOfficerId=${UserContext.id}&randomNUm=${Session.randomNUm}">
								[@spring.message "${ConfigurationConstants.SAVINGS}.Savings" /]
							</a> 
						</span>
					</div>
				[/#if]
			</div>
			[#if clientInformationDto.loanAccountsInUse?has_content ]
			<div>
				<div class="tableContentLightBlue" style="width: 325px">
					<div>
						<span class="fontnormalbold"> 
							[@spring.message "${ConfigurationConstants.LOAN}" /] 
						</span> 
					</div>

					[#list clientInformationDto.loanAccountsInUse as loan]
					<div>
						<span class="fontnormal"> 
							<a id="viewClientDetails.link.viewLoanAccount"
								href="loanAccountAction.do?globalAccountNum=${loan.globalAccountNum}&customerId=${clientInformationDto.clientDisplay.customerId}&method=get&recordOfficeId=${UserContext.branchId}&recordLoanOfficerId=${UserContext.id}&randomNUm=${Session.randomNUm}">
								${loan.prdOfferingName}, [@spring.message "client.acc" /] ${loan.globalAccountNum}
							</a> 
						</span>
						<br/>
						<span class="fontnormal">
							 [@mifostag.MifosImage id="${loan.accountStateId}" moduleName="org.mifos.accounts.loan.util.resources.loanImages" /]
							 ${loan.accountStateName} 
					 	</span>
					</div>
					<div>
						[#if loan.accountStateId==5 || loan.accountStateId==9 ]
						<span class="fontnormal"> 
							[@spring.message "loan.outstandingbalance"/] 
							${loan.outstandingBalance?number} <br>
							[@spring.message "loan.amount_due" /] 
							${loan.totalAmountDue?number} 
						</span>
						[/#if]
					</div>
					<div>
						<img src="pages/framework/images/trans.gif" width="5" height="20"></td>
					</div>
					[/#list]
				</div>
			</div>	
			[/#if]
			<div>
				<img src="pages/framework/images/trans.gif" width="10" height="10">
			</div>
			[#if clientInformationDto.savingsAccountsInUse?has_content ]
			<div class="tableContentLightBlue" style="width: 325px" >
				<div>
					<span class="fontnormalbold"> 
						[@spring.message "${ConfigurationConstants.SAVINGS}.Savings" /] 
					</span> 
				</div>
				
				[#list clientInformationDto.savingsAccountsInUse as savings ]
				<div>
					<span class="fontnormal"> 	
				 		<a id="viewClientDetails.link.viewSavingsAccount"
							href="savingsAction.do?globalAccountNum=${savings.globalAccountNum}&method=get&recordOfficeId=${UserContext.branchId}&recordLoanOfficerId=${UserContext.id}&randomNUm=${Session.randomNUm}">
							${savings.prdOfferingName}, [@spring.message "client.acc" /] ${savings.globalAccountNum}
						</a> 
					</span>
					<br/>
					<span class="fontnormal"> 
						[@mifostag.MifosImage id="${savings.accountStateId}" moduleName="org.mifos.accounts.savings.util.resources.savingsImages" /] 
						${savings.accountStateName}
					</span>
				</div>
				<div>
					<span class="fontnormal">
						[@spring.message "Client.balance" /] 
						${savings.savingsBalance?number} 
					</span>
				</div>
				<div>
					<img src="pages/framework/images/trans.gif" width="5" height="20"></td>
				</div>
				[/#list]
			</div>
			[/#if]		
			<div>
				<img src="pages/framework/images/trans.gif" width="10" height="10">
			</div>
			
			<div class="tableContentLightBlue" style="width: 325px">
				<span class="fontnormalbold">		
					[#assign arguments = ["${ConfigurationConstants.CLIENT}"]/]
					[@spring.messageArgs "client.clientcharges" arguments /] 
				</span>
				<div>
					<span class="fontnormal"> 
						<a id="viewClientDetails.link.viewDetails" href="customerAccountAction.do?method=load&globalCustNum=${clientInformationDto.clientDisplay.globalCustNum}"/>
							[@spring.message "client.viewdetails" /]
						</a> 
					</span>
					<br/>
					<span class="fontnormal">
						[@spring.message "client.amtdue" /]
						<span id="viewClientDetails.text.amountDue">
							${clientInformationDto.customerAccountSummary.nextDueAmount?number}
						</span>
					</span>
				</div>
				<div>
					<img src="pages/framework/images/trans.gif" width="5" height="5">
				</div>
			</div>	
			
			<div>
				<span class="fontnormal">
					[#if clientInformationDto.clientDisplay.customerStatusId !=1 && clientInformationDto.clientDisplay.customerStatusId !=2 ]
						<a id="viewClientDetails.link.viewAllClosedAccounts" href="custAction.do?method=getClosedAccounts&customerId=${clientInformationDto.clientDisplay.customerId}&input=client&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}">
	  						[@spring.message "client.ClosedAccountsLink" /]
	  					</a>
	  				[/#if]
	  			</span>
			</div>		
		</div>	
		<!-- Account Info ends --> 
		<!--- MFI Information Starts -->
		<div>
			<img src="pages/framework/images/trans.gif" width="10" height="10">
		</div>
		<div>
			<div>
				<span class="headingorange">
					[@spring.message "client.MFIInformationHeading" /]
				</span>		
				<span class="fontnormal">
					<a id="viewClientDetails.link.editMfiInformation" href="clientCustAction.do?method=editMfiInfo&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}">
						[@spring.message "client.EditMfiInformationLink" /]
					</a>
				</span>
			</div>
			<div id="Client.ExternalId">
				<span class="fontnormal"> 
					[@spring.message "Client.${ConfigurationConstants.EXTERNALID}" /]:
					${clientInformationDto.clientDisplay.externalId}
				</span>
			</div>
			<div>
				<span class="fontnormal">
					[#assign arguments = ["${ConfigurationConstants.CLIENT}"]/]
					[@spring.messageArgs "client.ClientStartDate" arguments /]:
					[#if clientInformationDto.clientDisplay.customerActivationDate?has_content]
						${i18n.date_formatter(clientInformationDto.clientDisplay.customerActivationDate, "dd/MM/yyyy", Application.LocaleSetting.locale)}
					[/#if]
					<br>
					</span> 
				<span class="fontnormal">
					[@spring.message "client.FormedBy" /]
				</span>
				<span class="fontnormal">
					 ${clientInformationDto.clientDisplay.customerFormedByDisplayName}
				</span><br>
				<br>
				</td>
			</div>
			<div id="Client.TrainedDate">
				<span class="fontnormalbold">
					[@spring.message "client.TrainingStatus"/]
					<br>
				</span>
				<!-- If the training status is set then the date is displayed -->
				<span class="fontnormal"> 
					[@spring.message "client.TrainedOn" /]
					[#if clientInformationDto.clientDisplay.trainedDate?has_content ]
						${i18n.date_formatter(clientInformationDto.clientDisplay.trainedDate, "dd/MM/yyyy", Application.LocaleSetting.locale)}
					[/#if]
				</span> 
				<span class="fontnormal">
					<br>
					<br>
				</span>
			</div>
			<!-- Group Membership details -->
			<div>
				<span class="fontnormalbold">
					[#if clientInformationDto.clientDisplay.clientUnderGroup ]
						[#assign arguments = ["${springMacroRequestContext.getMessage(ConfigurationConstants.GROUP)}"]/]
						[@spring.messageArgs "client.GroupMembershipDetails" arguments /]
					[#else]
						[#assign arguments = ["${springMacroRequestContext.getMessage(ConfigurationConstants.BRANCHOFFICE)}"]/]
						[@spring.messageArgs "client.GroupMembershipDetails" arguments /]
					[/#if]<br>
					<span class="fontnormalRed"> 
						[@spring.message "client.MeetingsHeading" /]&nbsp;
						<span id="viewClientDetails.text.meetingSchedule">
							${clientInformationDto.customerMeeting.meetingSchedule}
						</span>
					</span>
					<span class="fontnormal">
						<br>
					</span>
					<span class="fontnormal"> 
						${clientInformationDto.customerMeeting.meetingPlace?if_exists}<br>
						[#if clientInformationDto.clientDisplay.clientUnderGroup]
							<span id="viewClientDetails.text.groupMembership">
								${clientInformationDto.clientDisplay.parentCustomerDisplayName}
							</span><br>
						[#else]
							${clientInformationDto.clientDisplay.branchName}<br>
						[/#if]
					</span>
				</span>
				<span><!-- Editing group or branch membership based on whether client belongs to group or not -->
					[#if clientInformationDto.clientDisplay.clientUnderGroup ]
						<a id="viewClientDetails.link.editRemoveGroupMembership"
							href="clientTransferAction.do?method=loadParents&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}">
							[#assign arguments = ["${springMacroRequestContext.getMessage(ConfigurationConstants.GROUP)}"]/]
							[@spring.messageArgs "client.EditRemoveMembership" arguments /]
						</a>
						<br>
					[#else]
						<a id="viewClientDetails.link.editBranchOfficeMembership"
							href="clientTransferAction.do?method=loadBranches&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}">
							[#assign arguments = ["${springMacroRequestContext.getMessage(ConfigurationConstants.BRANCHOFFICE)}"]/]
							[@spring.messageArgs "client.editMembership" arguments /]
						</a>
						<br>
						<a id="viewClientDetails.link.editMeetingScheduleAddGroup"
							href="meetingAction.do?method=edit&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}&customerLevel=${clientInformationDto.clientDisplay.customerLevelId}">
							[@spring.message "client.EditMeetingLink" /]
							[@spring.message "client.Separator" /]
							[@spring.message "client.AddGroup" /]												
						</a>
						<br>
					[/#if]
				</span>
			</div>
			
			<div>
				<img src="pages/framework/images/trans.gif" width="10" height="10">
			</div>
			
			<div>
				<div>
					<span class="headingorange">
						[@spring.message "client.PersonalInformationHeading" /]
					</span>
					<span class="fontnormal">
						<a id="viewClientDetails.link.editPersonalInformation" href="clientCustAction.do?method=editPersonalInfo&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}">
							[@spring.message "client.EditPersonalInformationLink" /]
						</a>
					</span>
				</div>
				<div>
					<span class="fontnormal"> 
						[@spring.message "client.DateOfBirth" /]
					</span>
					<span id="viewClientDetails.text.dateOfBirth">
						${i18n.date_formatter(clientInformationDto.clientDisplay.dateOfBirth, "dd/MM/yyyy", Application.LocaleSetting.locale)};
					</span>
					${clientInformationDto.clientDisplay.age} [@spring.message "client.YearsOld" /]<br>
				</div>
				<div id="Client.GovernmentId">
					<span class="fontnormal">
						[@spring.message "Client.${ConfigurationConstants.GOVERNMENT_ID}" /]:
						${clientInformationDto.clientDisplay.governmentId}<br>
					</span>
				</div>
				[#if !clientInformationDto.clientDisplay.areFamilyDetailsRequired ]
				<div>
					<span class="fontnormal">
						${clientInformationDto.clientDisplay.maritalStatus?if_exists}
						[#if clientInformationDto.clientDisplay.maritalStatus?has_content ];[/#if]
	                    [#if clientInformationDto.clientDisplay.spouseFatherValue?has_content && clientInformationDto.clientDisplay.spouseFatherName?has_content]   
							${clientInformationDto.clientDisplay.spouseFatherValue}
							[@spring.message "client.Name" /]
							<span id="viewClientDetails.text.spouseFatherName">
								${clientInformationDto.clientDisplay.spouseFatherName}
							</span>
	                        [#if clientInformationDto.clientDisplay.numChildren?has_content];[/#if]
	                    [/#if]
						[#if clientInformationDto.clientDisplay.numChildren?has_content ]
							${clientInformationDto.clientDisplay.numChildren}
							[@spring.message "client.Children" /]
						[/#if]<br>
					</span>
				</div>
				[/#if]
				<div id="Client.Ethnicity">
					<span class="fontnormal">
						[@spring.message "Client.${ConfigurationConstants.ETHNICITY}" /]:
						${clientInformationDto.clientDisplay.ethnicity?if_exists}
						<br>
					</span>
				</div>
				<div id="Client.EducationLevel">
					<span class="fontnormal">
						[@spring.message "client.EducationLevel" /]
						${clientInformationDto.clientDisplay.educationLevel?if_exists}
						<br>
					</span>
				</div>
				<div id="Client.PovertyStatus">
					<span class="fontnormal">
						[@spring.message "client.PovertyStatus" /]
						${clientInformationDto.clientDisplay.povertyStatus?if_exists}
						<br>
					</span>
				</div>
				<div id="Client.Citizenship">
					<span class="fontnormal">
						[@spring.message "Client.${ConfigurationConstants.CITIZENSHIP}" /]:
						${clientInformationDto.clientDisplay.citizenship?if_exists}
						<br>
					</span>
				</div>
				<div id="Client.Handicapped">
					<span class="fontnormal">
					[#if clientInformationDto.clientDisplay.handicapped?has_content]
						[@spring.message "${ConfigurationConstants.HANDICAPPED}" /]
						<span id="viewClientDetails.text.handicapped">
							${clientInformationDto.clientDisplay.handicapped}
						</span>
					[/#if]
					</span>
				</div>
				[#if clientInformationDto.address.phoneNumber?has_content ||
					 clientInformationDto.address.displayAddress?has_content ||
					 clientInformationDto.address.city?has_content	 ||
					 clientInformationDto.address.state?has_content	 ||
					 clientInformationDto.address.country?has_content ||
					 clientInformationDto.address.zip?has_content
				 ]
				<div id="Client.Address">
					<span class="fontnormalbold">
						<br>
						[@spring.message "client.Address" /]
					 	<span class="fontnormal">
					 		<br>
					 	</span> 
					 	[#if clientInformationDto.address.displayAddress?has_content]
							<span class="fontnormal">
								${clientInformationDto.address.displayAddress} 
							</span>
						[/#if]
					</span>
				</div>
				<div id="Client.City">
					<span class="fontnormal">
						[#if clientInformationDto.address.city?has_content ]
							<span class="fontnormal">
								${clientInformationDto.address.city}
							</span>
						[/#if]
					</span>
				</div>
				<div id="Client.State">
					<span class="fontnormal">
						[#if clientInformationDto.address.state?has_content]
							<span class="fontnormal">
								${clientInformationDto.address.state}
							</span>
						[/#if]
					</span>
				</div>
				<div id="Client.Country">
					<span class="fontnormal">
						[#if clientInformationDto.address.country?has_content]
							<span class="fontnormal">
								${clientInformationDto.address.country}
							</span>
						[/#if]
					</span>
				</div>
				<div id="Client.PostalCode">
					<span class="fontnormal">
						[#if clientInformationDto.address.zip?has_content]
							<span class="fontnormal">
								${clientInformationDto.address.zip}
							</span>
						[/#if]
					</span>
				</div>
				<div id="Client.PhoneNumber">
					<span class="fontnormal">
						[#if clientInformationDto.address.phoneNumber?has_content ]
							<br>
							[@spring.message "client.Telephone" /]
							${clientInformationDto.address.phoneNumber}
						[/#if]
					</span> 
					<br>
				</div>
				[/#if]			
				<div>
					<img src="pages/framework/images/trans.gif" width="10" height="10">
				</div>				
				<div>
					<a id="viewClientDetails.link.questionGroups" href="viewAndEditQuestionnaire.ftl?creatorId=${Session.UserContext.id}&entityId=${clientInformationDto.clientDisplay.customerId}&event=Create&source=Client&backPageUrl=${backPageUrl}">
				    	[@spring.message "client.ViewQuestionGroupResponsesLink" /]
					</a>
					<br/>
					[#if containsQGForCloseClient]		
                    <a id="viewClientDetails.link.questionGroupsClose" href="viewAndEditQuestionnaire.ftl?creatorId=${Session.UserContext.id}&entityId=${clientInformationDto.clientDisplay.customerId}&event=Close&source=Client&backPageUrl=${backPageUrl}">
                        [@spring.message "client.ViewQuestionGroupForClosedClientResponsesLink" /]
                    </a>
                    <br/>
                    [/#if]
					<a id="viewClientDetails.link.historicalDataLink" href="custHistoricalDataAction.do?method=getHistoricalData&globalCustNum=${clientInformationDto.clientDisplay.globalCustNum}&currentFlowKey=${Request.currentFlowKey}&randomNUm=${Session.randomNUm}">
					    [@spring.message "client.HistoricalDataLink" /]
					</a>
					<br/>
					<a id="viewClientDetails.link.viewChangeLog" href="clientCustAction.do?method=loadChangeLog&entityType=Client&entityId=${clientInformationDto.clientDisplay.customerId}&currentFlowKey=${Request.currentFlowKey}">
						[@spring.message "client.ChangeLogLink" /]
					</a>
				</div>
			</div>
				
		</div>
	</form>
</div>
[@layout.footer /]