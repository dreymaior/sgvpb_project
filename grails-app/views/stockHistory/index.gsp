
<%@ page import="sgvpb_project.StockHistory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockHistory.label', default: 'StockHistory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stockHistory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
			</ul>
		</div>
		<div id="list-stockHistory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="user" title="${message(code: 'stockHistory.user.label', default: 'User')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'stockHistory.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'stockHistory.quantidade.label', default: 'Quantidade')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'stockHistory.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="situacao" title="${message(code: 'stockHistory.situacao.label', default: 'Situacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockHistoryInstanceList}" status="i" var="stockHistoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockHistoryInstance.id}">${fieldValue(bean: stockHistoryInstance, field: "user")}</g:link></td>
					
						<td><g:formatDate date="${stockHistoryInstance.data}" /></td>
					
						<td>${fieldValue(bean: stockHistoryInstance, field: "quantidade")}</td>
					
						<td>${fieldValue(bean: stockHistoryInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: stockHistoryInstance, field: "situacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockHistoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
