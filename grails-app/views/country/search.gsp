<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="searchButton" value="${message(code: 'search.new')}"/>
    <g:set var="countryNameHint" value="${message(code: 'country.name.label')}"/>
    <g:set var="entityName" value="${message(code: 'country.search.title', default: 'myapp.Country')}" />
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
<g:form controller="Country" action="search"  >
    <label class="text-monospace"><g:message code="search.label"/> </label>
    <g:field name="searchText" type="text"  placeholder="${countryNameHint}" value="${countryName}"/>
    <g:submitButton  name="search" value="${searchButton}"/>
</g:form>
<h1 class="text-monospace"><g:message code="search.result.label"/> </h1>
<h1 class="text-monospace"><g:message code="search.all.countries.label"/> "${countryCount}"</h1>
<div id="list-hotel" class="content scaffold-list" role="main">
    <f:table collection="${countryList}" />

    <div class="pagination">
        <g:paginate total="${countryCount ?: 0}"  max="${maxCount}" id="paginate" />
    </div>
</div>

</body>
</html>