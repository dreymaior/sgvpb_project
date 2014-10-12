
<%@ page import="sgvpb_project.Vendor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vendor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vendor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="organization" title="${message(code: 'vendor.organization.label', default: 'Organization')}" />
					
						<g:sortableColumn property="cnpj" title="${message(code: 'vendor.cnpj.label', default: 'Cnpj')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'vendor.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="phone1" title="${message(code: 'vendor.phone1.label', default: 'Phone1')}" />
					
						<g:sortableColumn property="phone2" title="${message(code: 'vendor.phone2.label', default: 'Phone2')}" />
					
						<g:sortableColumn property="street" title="${message(code: 'vendor.street.label', default: 'Street')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vendorInstanceList}" status="i" var="vendorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vendorInstance.id}">${fieldValue(bean: vendorInstance, field: "organization")}</g:link></td>
					
						<td>${fieldValue(bean: vendorInstance, field: "cnpj")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "phone1")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "phone2")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "street")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vendorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
