
<%@ page import="sgvpb_project.Colaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'colaborator.label', default: 'Colaborator')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-colaborator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-colaborator" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list colaborator">
			
				<g:if test="${colaboratorInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="colaborator.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${colaboratorInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="colaborator.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${colaboratorInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="colaborator.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${colaboratorInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="colaborator.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${colaboratorInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="colaborator.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${colaboratorInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="colaborator.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${colaboratorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="colaborator.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${colaboratorInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="colaborator.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${colaboratorInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.street}">
				<li class="fieldcontain">
					<span id="street-label" class="property-label"><g:message code="colaborator.street.label" default="Street" /></span>
					
						<span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${colaboratorInstance}" field="street"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="colaborator.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${colaboratorInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.complement}">
				<li class="fieldcontain">
					<span id="complement-label" class="property-label"><g:message code="colaborator.complement.label" default="Complement" /></span>
					
						<span class="property-value" aria-labelledby="complement-label"><g:fieldValue bean="${colaboratorInstance}" field="complement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="colaborator.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${colaboratorInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="colaborator.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${colaboratorInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="colaborator.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${colaboratorInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="colaborator.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${colaboratorInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${colaboratorInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="colaborator.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${colaboratorInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:colaboratorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${colaboratorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
