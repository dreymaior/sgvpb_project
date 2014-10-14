<%@ page import="sgvpb_project.Entry" %>



<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="entry.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${sgvpb_project.User.list()}" optionKey="id" required="" value="${entryInstance?.author?.id}" class="many-to-one"/>

</div>

