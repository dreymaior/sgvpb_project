
<%@ page import="sgvpb_project.Stock" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stock.label', default: 'Stock')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stock" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stock" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="stockId" title="${message(code: 'stock.id.label', default: 'id')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'stock.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'stock.quantidade.label', default: 'Quantidade')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'stock.usuario.label', default: 'Usuario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockInstanceList}" status="i" var="stockInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockInstance.id}">${fieldValue(bean: stockInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: stockInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: stockInstance, field: "quantidade")}</td>
					
						<td>${fieldValue(bean: stockInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
