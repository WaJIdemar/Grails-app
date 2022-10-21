<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Поиск отеля</title>
    <g:set var="searchButton" value="${message(code: 'search.new')}"/>
    <g:set var="hotelNameHint" value="${message(code: 'hotel.name.label')}"/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/hotel')}"><g:message code="hotel.all.label"
                                                                              default="All Hotels"/></a></li>
    </ul>
</div>
<g:form controller="Hotel" action="search">
    <label class="text-monospace"><g:message code="search.label"/></label>
    <g:field name="searchText" type="text" placeholder="${hotelNameHint}" value="${hotelName}"/>
    <g:submitButton name="search" value="${searchButton}"/>
</g:form>
<h1 class="text-monospace"><g:message code="search.result.label"/></h1>

<h1 class="text-monospace"><g:message code="search.all.hotels.label"/> "${hotelCount}"</h1>

<div id="list-hotel" class="content scaffold-list" role="main">
    <f:table collection="${hotelList}"/>

    <div class="pagination">
        <g:paginate total="${hotelCount ?: 0}" max="${maxCount}" id="paginate"/>
    </div>
</div>
</body>
</html>