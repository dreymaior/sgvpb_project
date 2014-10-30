
<%@ page import="sgvpb_project.ClientOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clientOrder.label', default: 'ClientOrder')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-clientOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-clientOrder" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="orderId" title="${message(code: 'clientOrder.orderId.label', default: 'Order Id')}" />
					
						<th><g:message code="clientOrder.client.label" default="Client" /></th>
					
						<th><g:message code="clientOrder.seller.label" default="Seller" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientOrderInstanceList}" status="i" var="clientOrderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientOrderInstance.id}">${fieldValue(bean: clientOrderInstance, field: "orderId")}</g:link></td>
					
						<td>${fieldValue(bean: clientOrderInstance, field: "client")}</td>
					
						<td>${fieldValue(bean: clientOrderInstance, field: "seller")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clientOrderInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
