<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="myapp.Country" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'hotel.search.label', default: 'myapp.Hotel')}"/>
    <g:set var="searchButton" value="${message(code: 'search.new')}"/>
    <g:set var="hotelNameHint" value="${message(code: 'hotel.name.label')}"/>
    <title><g:message code="default.search.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/')}"><g:message code="hotel.all.label"
                                                                              default="All Hotels"/></a></li>
        <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="country.all.label"
                                                                                default="All Countries"/></a></li>
    </ul>
</div>
<g:form controller="hotel" action="search">
    <label class="text-monospace"><g:message code="search.label"/></label>
    <g:field name="searchText" type="text" placeholder="${hotelNameHint}" value="${hotelName}"/>
    <g:submitButton name="search" value="${searchButton}"/>
    <label class="text-monospace"><g:message code="search.country.name.label"/></label>
    <g:select optionKey="id" name="countryId" from='${Country.list()}' noSelection="${['null': 'Любая']}"
              value='${country?.id}'>
    </g:select>
</g:form>
<h1 class="text-monospace"><g:message code="search.result.label"/></h1>

<h1 class="text-monospace"><g:message code="search.all.hotels.label"/> "${hotelCount}"</h1>

<div id="list-hotel" class="content scaffold-list" role="main">
    <f:table collection="${hotelList}" template="tableForHotelWithWebSite" myProperty="Template: view/templates/_fields/_tableForHotelWithWebSite.gsp"
             properties="name, stardom"/>

    <div class="pagination">
        <g:paginate total="${hotelCount ?: 0}" max="${maxCount}" id="paginate"/>
    </div>
</div>
</body>
</html>