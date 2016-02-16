
<%@ page import="com.netlifestyle.mixtape.Mixtape" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mixtape.label', default: 'Mixtape')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mixtape" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mixtape" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="mixtapeLocation" title="${message(code: 'mixtape.mixtapeLocation.label', default: 'Mixtape Location')}" />
					
						<th><g:message code="mixtape.playlist.label" default="Playlist" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mixtapeInstanceList}" status="i" var="mixtapeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mixtapeInstance.id}">${fieldValue(bean: mixtapeInstance, field: "mixtapeLocation")}</g:link></td>
					
						<td>${fieldValue(bean: mixtapeInstance, field: "playlist")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mixtapeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
