<%@ page import="myapp.Country" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Main</title>
    <g:set var="hotelName" value="${message(code: 'hotel.name.label')}"/>
    <g:set var="searchButton" value="${message(code: 'search.button.label')}"/>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/hotel')}"><g:message code="hotel.all.label"
                                                                                  default="All Hotels"/></a></li>
        <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="country.all.label"
                                                                                    default="All Countries"/></a></li>
    </ul>
</div>

<div class="shadow">
    <g:form controller="searchHotel" action="index">
        <label class="text-monospace"><g:message code="search.label"/></label>
        <g:textField name="searchText" value="${hotelName}"/>
        <g:submitButton name="search" value="${searchButton}"/>
        <label class="text-monospace"><g:message code="search.country.name.label"/></label>
        <g:select optionKey="id" name="country.id" from='${Country.list()}' value='${country?.id}'>
        </g:select>
    </g:form>
</div>


</body>
</html>
