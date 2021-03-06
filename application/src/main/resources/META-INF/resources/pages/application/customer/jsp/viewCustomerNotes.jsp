<%--
Copyright (c) 2005-2011 Grameen Foundation USA
All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied. See the License for the specific language governing
permissions and limitations under the License.

See also http://www.apache.org/licenses/LICENSE-2.0.html for an
explanation of the license and how it is applied.
--%>
<%@ taglib uri="http://struts.apache.org/tags-html-el" prefix="html-el"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/tags/mifos-html" prefix = "mifos"%>
<%@ taglib uri="/mifos/customtags" prefix="mifoscustom"%>
<%@ taglib uri="/mifos/custom-tags" prefix="customtags"%>
<%@ taglib uri="/sessionaccess" prefix="session"%>


<tiles:insert definition=".clientsacclayoutsearchmenu">
 <span id="page.id" title="ViewCustomerNotes"></span>
 <tiles:put name="body" type="string">
<html-el:form action="notesAction.do">
			<html-el:hidden property="currentFlowKey" value="${requestScope.currentFlowKey}" />
      <table width="95%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          	<td class="bluetablehead05">
			  <span class="fontnormal8pt">
					<customtags:headerLink/>
	          </span>
          </td>
        </tr>
      </table>
      <table width="95%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="70%" align="left" valign="top" class="paddingL15T15">
          	<table width="95%" border="0" cellpadding="3" cellspacing="0">
            	<tr>
              		<td width="83%" class="headingorange">
						<span class="heading">
							<c:out value="${sessionScope.customerNotesActionForm.customerName}"/> &nbsp;-
						</span>
						<mifos:mifoslabel name="Customer.addnoteheading"></mifos:mifoslabel>
					</td>
              		<td width="17%" align="right" class="fontnormal">
						<a id="viewCustomerNotes.link.addNote" href="customerNotesAction.do?method=load&customerId=<c:out value="${sessionScope.customerNotesActionForm.customerId}"/>&randomNUm=${sessionScope.randomNUm}&currentFlowKey=${requestScope.currentFlowKey}">
						<mifos:mifoslabel name="Customer.addnoteheading" ></mifos:mifoslabel></a>
				 	</td>
            	</tr>
            	<tr>
					<logic:messagesPresent>
					<td><br><font class="fontnormalRedBold"><span id="viewCustomerNotes.error.message"><html-el:errors
							bundle="accountsUIResources" /></span></font></td>
						</logic:messagesPresent>
				</tr>

          	</table>
            <br>
            <table width="95%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td>
                	<mifos:mifostabletagdata name="customerNote" key="allnotes" type="single"
       					width="95%" border="0" cellspacing="0" cellpadding="0"/>
                </td>
              </tr>
            </table>

            <br>
          </td>
        </tr>
      </table>
      <br>
    </html-el:form>
</tiles:put>
</tiles:insert>
