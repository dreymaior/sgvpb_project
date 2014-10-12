<%@ page import="sgvpb_project.Colaborator" %>



<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="colaborator.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${colaboratorInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="colaborator.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${colaboratorInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="colaborator.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${colaboratorInstance?.birthDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="colaborator.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="role" from="${colaboratorInstance.constraints.role.inList}" required="" value="${colaboratorInstance?.role}" valueMessagePrefix="colaborator.role"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="colaborator.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${colaboratorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'phone1', 'error')} required">
	<label for="phone1">
		<g:message code="colaborator.phone1.label" default="Phone1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone1" required="" value="${colaboratorInstance?.phone1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'phone2', 'error')} ">
	<label for="phone2">
		<g:message code="colaborator.phone2.label" default="Phone2" />
		
	</label>
	<g:textField name="phone2" value="${colaboratorInstance?.phone2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'street', 'error')} required">
	<label for="street">
		<g:message code="colaborator.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${colaboratorInstance?.street}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="colaborator.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="number" required="" value="${colaboratorInstance?.number}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'complement', 'error')} ">
	<label for="complement">
		<g:message code="colaborator.complement.label" default="Complement" />
		
	</label>
	<g:textField name="complement" value="${colaboratorInstance?.complement}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="colaborator.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${colaboratorInstance?.district}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="colaborator.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${colaboratorInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="colaborator.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${colaboratorInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="colaborator.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${colaboratorInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: colaboratorInstance, field: 'postalCode', 'error')} required">
	<label for="postalCode">
		<g:message code="colaborator.postalCode.label" default="Postal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postalCode" required="" value="${colaboratorInstance?.postalCode}"/>

</div>

