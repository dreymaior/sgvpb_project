<%@ page import="sgvpb_project.StockHistory" %>



<div class="fieldcontain ${hasErrors(bean: stockHistoryInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="stockHistory.user.label" default="User" />
		
	</label>
	<g:textField name="user" value="${stockHistoryInstance?.user}"/>

</div>

