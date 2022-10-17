<!doctype html>
<html>
<head>
    <title>Page Not Found</title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a href="${createLink(uri: '/country')}"><g:message code="search.new"/></a></li>
    </ul>
</div>

<h1 class="text-monospace"><g:message code="search.country.name.label"/> "${searchText}"</h1>
<p><g:message code="search.failed"/> </p>
</body>
</html>