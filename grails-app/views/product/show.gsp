
<%@ page import="sgvpb_project.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.productId}">
				<li class="fieldcontain">
					<span id="productId-label" class="property-label"><g:message code="product.productId.label" default="Product Id" /></span>
					
						<span class="property-value" aria-labelledby="productId-label"><g:fieldValue bean="${productInstance}" field="productId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="product.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${productInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="product.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${productInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.estampa}">
				<li class="fieldcontain">
					<span id="estampa-label" class="property-label"><g:message code="product.estampa.label" default="Estampa" /></span>
					
						<span class="property-value" aria-labelledby="estampa-label"><g:fieldValue bean="${productInstance}" field="estampa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.cor}">
				<li class="fieldcontain">
					<span id="cor-label" class="property-label"><g:message code="product.cor.label" default="Cor" /></span>
					
						<span class="property-value" aria-labelledby="cor-label"><g:fieldValue bean="${productInstance}" field="cor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.valorUnit}">
				<li class="fieldcontain">
					<span id="valorUnit-label" class="property-label"><g:message code="product.valorUnit.label" default="Valor Unit" /></span>
					
						<span class="property-value" aria-labelledby="valorUnit-label"><g:fieldValue bean="${productInstance}" field="valorUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pcgLucro}">
				<li class="fieldcontain">
					<span id="pcgLucro-label" class="property-label"><g:message code="product.pcgLucro.label" default="Pcg Lucro" /></span>
					
						<span class="property-value" aria-labelledby="pcgLucro-label"><g:fieldValue bean="${productInstance}" field="pcgLucro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.clientOrder}">
				<li class="fieldcontain">
					<span id="clientOrder-label" class="property-label"><g:message code="product.clientOrder.label" default="Client Order" /></span>
					
						<g:each in="${productInstance.clientOrder}" var="c">
						<span class="property-value" aria-labelledby="clientOrder-label"><g:link controller="clientOrder" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
