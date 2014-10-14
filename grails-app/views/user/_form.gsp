<%@ page import="sgvpb_project.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="user.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${userInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'entries', 'error')} ">
	<label for="entries">
		<g:message code="user.entries.label" default="Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.entries?}" var="e">
    <li><g:link controller="entry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="entry" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'entry.label', default: 'Entry')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="user.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${sgvpb_project.Colaborator.list()}" optionKey="id" required="" value="${userInstance?.person?.id}" class="many-to-one"/>

</div>

