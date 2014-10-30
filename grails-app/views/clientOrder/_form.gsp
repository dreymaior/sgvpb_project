<%@ page import="sgvpb_project.ClientOrder" %>



<div class="fieldcontain ${hasErrors(bean: clientOrderInstance, field: 'orderId', 'error')} required">
	<label for="orderId">
		<g:message code="clientOrder.orderId.label" default="Order Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="orderId" required="" value="${clientOrderInstance?.orderId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientOrderInstance, field: 'client', 'error')} required">
	<label for="client">
		<g:message code="clientOrder.client.label" default="Client" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="client" name="client.id" from="${sgvpb_project.Colaborator.list()}" optionKey="id" required="" value="${clientOrderInstance?.client?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientOrderInstance, field: 'seller', 'error')} required">
	<label for="seller">
		<g:message code="clientOrder.seller.label" default="Seller" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="seller" name="seller.id" from="${sgvpb_project.Colaborator.list()}" optionKey="id" required="" value="${clientOrderInstance?.seller?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientOrderInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="clientOrder.products.label" default="Products" />
		
	</label>
	<g:select name="products" from="${sgvpb_project.Product.list()}" multiple="multiple" optionKey="id" size="5" value="${clientOrderInstance?.products*.id}" class="many-to-many"/>

</div>

