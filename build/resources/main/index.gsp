<%@ page import="myapp.Country" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><a class="btn-toolbar" href="${createLink(uri: '/hotel')}"><g:message message="All Hotels"/></a></li>
        <li><a class="btn-toolbar" href="${createLink(uri: '/country')}"><g:message message="All Countries"/></a></li>
    </ul>
</div>
<g:form controller="searchHotel" action="index" >
    <label>Search here</label>
    <g:textField name="searchText" value="Hotel name"/>
    <g:submitButton name="search" value="Search"/>
    <label>myapp.Country:</label>
    <g:select name="country.name" from='${Country.list()}' value='${country}' >
    </g:select>
</g:form>

</body>
</html>
