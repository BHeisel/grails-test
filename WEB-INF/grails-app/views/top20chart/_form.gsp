<%@ page import="com.netlifestyle.mixtape.Top20chart" %>



<div class="fieldcontain ${hasErrors(bean: top20chartInstance, field: 'trackPosition', 'error')} required">
    <label for="trackPosition">
        <g:message code="top20chart.trackPosition.label" default="Track Position"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="trackPosition" type="number" value="${top20chartInstance.trackPosition}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: top20chartInstance, field: 'country', 'error')} required">
    <label for="country">
        <g:message code="top20chart.country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="country" name="country.id" from="${com.netlifestyle.mixtape.Country.list()}" optionKey="id"
              required="" value="${top20chartInstance?.country?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: top20chartInstance, field: 'lastWeeksPosition', 'error')} required">
    <label for="lastWeeksPosition">
        <g:message code="top20chart.lastWeeksPosition.label" default="Last Weeks Position"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="lastWeeksPosition" type="number" value="${top20chartInstance.lastWeeksPosition}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: top20chartInstance, field: 'track', 'error')} required">
    <label for="track">
        <g:message code="top20chart.track.label" default="Track"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="track" name="track.id" from="${com.netlifestyle.mixtape.Track.list()}" optionKey="id" required=""
              value="${top20chartInstance?.track?.id}" class="many-to-one"/>
</div>

