<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="searchButton" value="${message(code: 'search.new')}"/>
    <g:set var="countryNameHint" value="${message(code: 'country.name.label')}"/>
    <title><g:message code="search.failed.title"/></title>
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

<g:form controller="Country" action="search"  >
    <label class="text-monospace"><g:message code="search.label"/> </label>
    <g:field name="searchText" type="text"  placeholder="${countryNameHint}" value="${countryName}"/>
    <g:submitButton  name="search" value="${searchButton}"/>
</g:form>
<p><g:message code="search.failed"/> </p>
</body>
</html>