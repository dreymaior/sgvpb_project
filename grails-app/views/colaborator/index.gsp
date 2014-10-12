
<%@ page import="sgvpb_project.Colaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'colaborator.label', default: 'Colaborator')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-colaborator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-colaborator" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'colaborator.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'colaborator.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'colaborator.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="birthDate" title="${message(code: 'colaborator.birthDate.label', default: 'Birth Date')}" />
					
						<g:sortableColumn property="role" title="${message(code: 'colaborator.role.label', default: 'Role')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'colaborator.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${colaboratorInstanceList}" status="i" var="colaboratorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${colaboratorInstance.id}">${fieldValue(bean: colaboratorInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: colaboratorInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: colaboratorInstance, field: "cpf")}</td>
					
						<td><g:formatDate date="${colaboratorInstance.birthDate}" /></td>
					
						<td>${fieldValue(bean: colaboratorInstance, field: "role")}</td>
					
						<td>${fieldValue(bean: colaboratorInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${colaboratorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
