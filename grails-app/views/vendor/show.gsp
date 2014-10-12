
<%@ page import="sgvpb_project.Vendor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vendor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vendor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vendor">
			
				<g:if test="${vendorInstance?.organization}">
				<li class="fieldcontain">
					<span id="organization-label" class="property-label"><g:message code="vendor.organization.label" default="Organization" /></span>
					
						<span class="property-value" aria-labelledby="organization-label"><g:fieldValue bean="${vendorInstance}" field="organization"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.cnpj}">
				<li class="fieldcontain">
					<span id="cnpj-label" class="property-label"><g:message code="vendor.cnpj.label" default="Cnpj" /></span>
					
						<span class="property-value" aria-labelledby="cnpj-label"><g:fieldValue bean="${vendorInstance}" field="cnpj"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="vendor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${vendorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="vendor.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${vendorInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="vendor.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${vendorInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.street}">
				<li class="fieldcontain">
					<span id="street-label" class="property-label"><g:message code="vendor.street.label" default="Street" /></span>
					
						<span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${vendorInstance}" field="street"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="vendor.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${vendorInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.complement}">
				<li class="fieldcontain">
					<span id="complement-label" class="property-label"><g:message code="vendor.complement.label" default="Complement" /></span>
					
						<span class="property-value" aria-labelledby="complement-label"><g:fieldValue bean="${vendorInstance}" field="complement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="vendor.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${vendorInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="vendor.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${vendorInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="vendor.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${vendorInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="vendor.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${vendorInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="vendor.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${vendorInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vendorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vendorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
