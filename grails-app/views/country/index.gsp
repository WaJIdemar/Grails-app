<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'myapp.Country')}" />
        <g:set var="entitiesName" value="${message(code: 'countries.label')}"/>
        <g:set var="hotelName" value="${message(code: 'country.name.label')}"/>
        <g:set var="searchButton" value="${message(code: 'search.button.label')}"/>
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.country.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <g:form controller="Country" action="search"  >
            <label><g:message code="search.label"/> </label>
            <g:textField name="searchText" value="${hotelName}"/>
            <g:submitButton  name="search" value="${searchButton}"/>
        </g:form>
        <div id="list-country" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.country.label" args="[entitiesName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${countryList}" />

            <div class="pagination">
                <g:paginate total="${countryCount ?: 0}" />
            </div>
        </div>
    </body>
</html>