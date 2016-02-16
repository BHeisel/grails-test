<%@ page import="com.netlifestyle.mixtape.Top20chart" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'top20chart.label', default: 'Top20chart')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-top20chart" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-top20chart" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="trackPosition"
                              title="${message(code: 'top20chart.trackPosition.label', default: 'Track Position')}"/>

            <th><g:message code="top20chart.country.label" default="Country"/></th>

            <g:sortableColumn property="lastWeeksPosition"
                              title="${message(code: 'top20chart.lastWeeksPosition.label', default: 'Last Weeks Position')}"/>

            <th><g:message code="top20chart.track.label" default="Track"/></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${top20chartInstanceList}" status="i" var="top20chartInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${top20chartInstance.id}">${fieldValue(bean: top20chartInstance, field: "trackPosition")}</g:link></td>

                <td>${fieldValue(bean: top20chartInstance, field: "country")}</td>

                <td>${fieldValue(bean: top20chartInstance, field: "lastWeeksPosition")}</td>

                <td>${fieldValue(bean: top20chartInstance, field: "track")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${top20chartInstanceTotal}"/>
    </div>
</div>
</body>
</html>
