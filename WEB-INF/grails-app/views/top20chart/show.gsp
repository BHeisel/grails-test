<%@ page import="com.netlifestyle.mixtape.Top20chart" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'top20chart.label', default: 'Top20chart')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-top20chart" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-top20chart" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list top20chart">

        <g:if test="${top20chartInstance?.trackPosition}">
            <li class="fieldcontain">
                <span id="trackPosition-label" class="property-label"><g:message code="top20chart.trackPosition.label"
                                                                                 default="Track Position"/></span>

                <span class="property-value" aria-labelledby="trackPosition-label"><g:fieldValue
                        bean="${top20chartInstance}" field="trackPosition"/></span>

            </li>
        </g:if>

        <g:if test="${top20chartInstance?.country}">
            <li class="fieldcontain">
                <span id="country-label" class="property-label"><g:message code="top20chart.country.label"
                                                                           default="Country"/></span>

                <span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show"
                                                                                     id="${top20chartInstance?.country?.id}">${top20chartInstance?.country?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${top20chartInstance?.lastWeeksPosition}">
            <li class="fieldcontain">
                <span id="lastWeeksPosition-label" class="property-label"><g:message
                        code="top20chart.lastWeeksPosition.label" default="Last Weeks Position"/></span>

                <span class="property-value" aria-labelledby="lastWeeksPosition-label"><g:fieldValue
                        bean="${top20chartInstance}" field="lastWeeksPosition"/></span>

            </li>
        </g:if>

        <g:if test="${top20chartInstance?.track}">
            <li class="fieldcontain">
                <span id="track-label" class="property-label"><g:message code="top20chart.track.label"
                                                                         default="Track"/></span>

                <span class="property-value" aria-labelledby="track-label"><g:link controller="track" action="show"
                                                                                   id="${top20chartInstance?.track?.id}">${top20chartInstance?.track?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${top20chartInstance?.id}"/>
            <g:link class="edit" action="edit" id="${top20chartInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
