<%@ page import="myapp.Country" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'hotel.label', default: 'myapp.Hotel')}"/>
    <g:set var="entitiesName" value="${message(code: 'hotels.label')}"/>
    <g:set var="hotelNameHint" value="${message(code: 'hotel.name.label')}"/>
    <g:set var="searchButton" value="${message(code: 'search.button.label')}"/>
    <title><g:message code="default.list.hotel.label" args="[entitiesName]"/></title>
</head>

<body>
<a href="#list-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/')}"><g:message code="hotel.all.label"
                                                                              default="All Hotels"/></a></li>
        <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="country.all.label"
                                                                                default="All Countries"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.hotel.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div>
    <g:form controller="hotel" action="search">
        <label class="text-monospace"><g:message code="search.label"/></label>
        <g:field name="searchText" type="text" placeholder="${hotelNameHint}"/>
        <g:submitButton name="search" value="${searchButton}"/>
        <label class="text-monospace"><g:message code="search.country.name.label"/></label>
        <g:select optionKey="id" name="countryId" from='${Country.list()}' noSelection="${['null': 'Любая']}"
                  value='${country?.id}'>
        </g:select>
    </g:form>
</div>

<div id="list-hotel" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.hotel.label" args="[entitiesName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${hotelList}"/>

    <div class="pagination">
        <g:paginate total="${hotelCount ?: 0}"/>
    </div>
</div>
</body>
</html>