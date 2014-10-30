
<%@ page import="sgvpb_project.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="productId" title="${message(code: 'product.productId.label', default: 'Product Id')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'product.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'product.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="estampa" title="${message(code: 'product.estampa.label', default: 'Estampa')}" />
					
						<g:sortableColumn property="cor" title="${message(code: 'product.cor.label', default: 'Cor')}" />
					
						<g:sortableColumn property="valorUnit" title="${message(code: 'product.valorUnit.label', default: 'Valor Unit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "productId")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "estampa")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "cor")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "valorUnit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
