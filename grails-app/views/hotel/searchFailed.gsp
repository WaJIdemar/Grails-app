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
        <li><a class="buttons" href="${createLink(uri: '/hotel')}"><g:message code="hotel.all.label"
                                                                              default="All Hotels"/></a></li>
    </ul>
</div>

<g:form controller="Hotel" action="search">
    <label class="text-monospace"><g:message code="search.label"/></label>
    <g:field name="searchText" type="text"  placeholder="${hotelNameHint}" value="${hotelName}"/>
    <g:submitButton name="search" value="${searchButton}"/>
</g:form>
<p><g:message code="search.failed"/></p>
</body>
</html>