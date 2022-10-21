<%@ page import="myapp.Country" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Поиск</title>
    <g:set var="searchButton" value="${message(code: 'search.new')}"/>
    <g:set var="hotelNameHint" value="${message(code: 'hotel.name.label')}"/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

<div id="list-hotel" class="content scaffold-list" role="main">
    <g:form controller="searchHotel" action="index">
        <label class="text-monospace"><g:message code="search.label"/></label>
        <g:field name="searchText" type="text"  placeholder="${hotelNameHint}" value="${hotelName}"/>
        <g:submitButton name="search" value="${searchButton}"/>
        <label class="text-monospace"><g:message code="search.country.name.label"/></label>
        <g:select optionKey="id" name="countryId" from='${Country.list()}' value="${country?.id}">
        </g:select>
    </g:form>
    <h1 class="text-monospace"><g:message code="search.result.label"/> </h1>
    <h1 class="text-monospace"><g:message code="search.all.hotels.label"/> "${hotelCount}"</h1>
    <f:table collection="${hotelList}" template="tableForHotelWithWebSite" myProperty="Template: view/templates/_fields/_tableForHotelWithWebSite.gsp"
    properties="name, stardom"/>

        <div class="pagination">
            <g:paginate total="${hotelCount ?: 0}" max="${maxCount}" id="paginate" />
        </div>
</div>
</body>
</html>