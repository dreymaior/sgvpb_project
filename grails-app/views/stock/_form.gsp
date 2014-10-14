<%@ page import="sgvpb_project.Stock" %>



<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'stockId', 'error')} required">
	<label for="stockId">
		<g:message code="stock.stockId.label" default="Stock Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="stockId" type="number" value="${stockInstance.stockId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="stock.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${stockInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="stock.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" value="${fieldValue(bean: stockInstance, field: 'quantidade')}" required=""/>

</div>
