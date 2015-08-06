<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<form method="post" name="lookuporder" id="lookuporder" action="<@ofbizUrl>FindRequest</@ofbizUrl>" >
<input type="hidden" name="viewSize" value="${viewSize}"/>
<input type="hidden" name="viewIndex" value="${viewIndex}"/>

<h1>${uiLabelMap.OrderFindOrder}</h1>
<@section>
    <@row>
    <@cell class="${styles.grid_large!}9 columns">
      <@field type="input" label="${uiLabelMap.OrderOrderId}" name="orderId"/>
      
      
      <@field type="input" label="${uiLabelMap.OrderOrderId}" name="orderId"/>
      
      <@row collapse=true>
                <@cell class="${styles.grid_large!}2 ${styles.grid_small!}3"> <label>${uiLabelMap.CommonDateFilter}</label></@cell>
                <@cell class="${styles.grid_large!}10 ${styles.grid_small!}9">
                    <@field type="datetime" dateType="datetime" label="${uiLabelMap.CommonFrom}" name="minDate" value="${requestParameters.minDate!}" size="25" maxlength="30" id="minDate1" collapse=true/>
                    <@field type="datetime" dateType="datetime" label="${uiLabelMap.CommonThru}" name="maxDate" value="${requestParameters.maxDate!}" size="25" maxlength="30" id="maxDate" collapse=true/>
                </@cell>
        </@row>
      
        <@fieldset title="${uiLabelMap.CommonAdvancedSearch}" collapsed=true>
          
        </@fieldset>
        <input type="hidden" name="showAll" value="Y"/>
        <@field type="submit">
            <input type="submit" value='${uiLabelMap.CommonFind}'/>
        </@field>
      </@cell>
  </@row>    
</@section>
<input type="image" src="<@ofbizContentUrl>/images/spacer.gif</@ofbizContentUrl>" onclick="javascript:lookupOrders(true);"/>
</form>
