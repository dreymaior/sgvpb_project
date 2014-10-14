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

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'history', 'error')} ">
	<label for="history">
		<g:message code="stock.history.label" default="History" />
		
	</label>
	<g:select name="history" from="${sgvpb_project.StockHistory.list()}" multiple="multiple" optionKey="id" size="5" value="${stockInstance?.history*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="stock.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${stockInstance?.usuario}"/>

</div>

