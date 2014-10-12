<%@ page import="sgvpb_project.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productId', 'error')} required">
	<label for="productId">
		<g:message code="product.productId.label" default="Product Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productId" required="" value="${productInstance?.productId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="product.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${productInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="product.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${productInstance?.tipo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'estampa', 'error')} required">
	<label for="estampa">
		<g:message code="product.estampa.label" default="Estampa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estampa" required="" value="${productInstance?.estampa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'cor', 'error')} required">
	<label for="cor">
		<g:message code="product.cor.label" default="Cor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cor" required="" value="${productInstance?.cor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'valorUnit', 'error')} required">
	<label for="valorUnit">
		<g:message code="product.valorUnit.label" default="Valor Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorUnit" value="${fieldValue(bean: productInstance, field: 'valorUnit')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pcgLucro', 'error')} required">
	<label for="pcgLucro">
		<g:message code="product.pcgLucro.label" default="Pcg Lucro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pcgLucro" value="${fieldValue(bean: productInstance, field: 'pcgLucro')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'clientOrder', 'error')} required">
	<label for="clientOrder">
		<g:message code="product.clientOrder.label" default="Client Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="clientOrder" name="clientOrder.id" from="${sgvpb_project.ClientOrder.list()}" optionKey="id" required="" value="${productInstance?.clientOrder?.id}" class="many-to-one"/>

</div>

