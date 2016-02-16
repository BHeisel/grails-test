<%@ page import="com.netlifestyle.mixtape.Mixtape" %>



<div class="fieldcontain ${hasErrors(bean: mixtapeInstance, field: 'mixtapeLocation', 'error')} ">
	<label for="mixtapeLocation">
		<g:message code="mixtape.mixtapeLocation.label" default="Mixtape Location" />
		
	</label>
	<g:textField name="mixtapeLocation" value="${mixtapeInstance?.mixtapeLocation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mixtapeInstance, field: 'playlist', 'error')} required">
	<label for="playlist">
		<g:message code="mixtape.playlist.label" default="Playlist" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="playlist" name="playlist.id" from="${com.netlifestyle.mixtape.Playlist.list()}" optionKey="id" required="" value="${mixtapeInstance?.playlist?.id}" class="many-to-one"/>
</div>

