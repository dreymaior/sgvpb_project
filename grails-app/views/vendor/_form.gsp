<%@ page import="sgvpb_project.Vendor" %>



<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'organization', 'error')} required">
	<label for="organization">
		<g:message code="vendor.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organization" required="" value="${vendorInstance?.organization}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="vendor.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${vendorInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="vendor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${vendorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'phone1', 'error')} required">
	<label for="phone1">
		<g:message code="vendor.phone1.label" default="Phone1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone1" required="" value="${vendorInstance?.phone1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'phone2', 'error')} ">
	<label for="phone2">
		<g:message code="vendor.phone2.label" default="Phone2" />
		
	</label>
	<g:textField name="phone2" value="${vendorInstance?.phone2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'street', 'error')} required">
	<label for="street">
		<g:message code="vendor.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${vendorInstance?.street}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="vendor.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="number" required="" value="${vendorInstance?.number}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'complement', 'error')} ">
	<label for="complement">
		<g:message code="vendor.complement.label" default="Complement" />
		
	</label>
	<g:textField name="complement" value="${vendorInstance?.complement}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="vendor.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${vendorInstance?.district}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="vendor.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${vendorInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="vendor.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${vendorInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="vendor.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${vendorInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'postalCode', 'error')} required">
	<label for="postalCode">
		<g:message code="vendor.postalCode.label" default="Postal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postalCode" required="" value="${vendorInstance?.postalCode}"/>

</div>

