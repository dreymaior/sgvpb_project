<%@ page import="sgvpb_project.StockHistory" %>



<div class="fieldcontain ${hasErrors(bean: stockHistoryInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="stockHistory.user.label" default="User" />
		
	</label>
	<g:textField name="user" value="${stockHistoryInstance?.user}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockHistoryInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="stockHistory.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${stockHistoryInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: stockHistoryInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="stockHistory.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" value="${fieldValue(bean: stockHistoryInstance, field: 'quantidade')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockHistoryInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="stockHistory.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${stockHistoryInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockHistoryInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="stockHistory.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${stockHistoryInstance?.situacao}"/>

</div>

