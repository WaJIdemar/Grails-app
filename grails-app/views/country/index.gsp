<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'myapp.Country')}" />
        <g:set var="entitiesName" value="${message(code: 'countries.label')}"/>
        <g:set var="countryNameHint" value="${message(code: 'country.name.label')}"/>
        <g:set var="searchButton" value="${message(code: 'search.button.label')}"/>
        <title><g:message code="default.list.country.label" args="[entitiesName]" /></title>
    </head>
    <body>
        <a href="#list-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="buttons" href="${createLink(uri: '/')}"><g:message code="hotel.all.label"
                                                                                      default="All Hotels"/></a></li>
                <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="country.all.label"
                                                                                        default="All Countries"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.country.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <g:form controller="Country" action="search"  >
            <label class="text-monospace"><g:message code="search.label"/> </label>
            <g:field name="searchText" type="text"  placeholder="${countryNameHint}"/>
            <g:submitButton  name="search" value="${searchButton}"/>
        </g:form>
        <div id="list-country" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.country.label" args="[entitiesName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${countryList}" />

            <div class="pagination">
                <g:paginate total="${countryCount ?: 0}"  />
            </div>
        </div>
    </body>
</html>