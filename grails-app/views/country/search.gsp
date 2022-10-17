<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Поиск страны</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="search.new"/></a></li>
    </ul>
</div>
<h1 class="text-monospace"><g:message code="search.result.label"/> </h1>
<h1 class="text-monospace"><g:message code="search.country.name.label"/> "${searchText}"</h1>
<h1 class="text-monospace"><g:message code="search.all.countries.label"/> "${countryList.size()}"</h1>
<div id="list-hotel" class="content scaffold-list" role="main">
    <f:table collection="${countryList}" />

    <div class="pagination">
        <g:paginate total="${countryList ?: 0}" />
    </div>
</div>

</body>
</html>