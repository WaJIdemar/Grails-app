<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Поиск отеля</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/hotel')}"><g:message code="search.new"/></a></li>
    </ul>
</div>

<h1 class="text-monospace"><g:message code="search.result.label"/></h1>

<h1 class="text-monospace"><g:message code="search.hotel.name.label"/>"${searchText}"</h1>

<h1 class="text-monospace"><g:message code="search.all.hotels.label"/> "${hotelList.size()}"</h1>

<div id="list-hotel" class="content scaffold-list" role="main">
    <f:table collection="${hotelList}"/>

    <div class="pagination">
        <g:paginate total="${hotelCount ?: 0}"/>
    </div>
</div>
</body>
</html>