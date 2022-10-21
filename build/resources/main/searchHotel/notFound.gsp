<%@ page import="myapp.Country" %>
<!doctype html>
<html>
<head>
    <title>Ничего не найдено</title>
    <meta name="layout" content="main">
    <g:set var="searchButton" value="${message(code: 'search.new')}"/>
    <g:set var="hotelNameHint" value="${message(code: 'hotel.name.label')}"/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

<g:form controller="searchHotel" action="index">
    <label class="text-monospace"><g:message code="search.label"/></label>
    <g:field name="searchText" type="text"  placeholder="${hotelNameHint}" value="${hotelName}"/>
    <g:submitButton name="search" value="${searchButton}"/>
    <label class="text-monospace"><g:message code="search.country.name.label"/></label>
    <g:select optionKey="id" name="countryId" from='${Country.list()}' value="${country?.id}">
    </g:select>
</g:form>
<p><g:message code="search.failed"/></p>
</body>
</html>