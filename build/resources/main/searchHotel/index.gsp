<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="buttons" href="${createLink(uri: '/')}"><g:message code="search.new"/></a></li>
    </ul>
</div>

<div id="list-hotel" class="content scaffold-list" role="main">
    <h1 class="text-monospace"><g:message code="search.result.label"/> </h1>
    <h1 class="text-monospace"><g:message code="search.hotel.name.label"/> "${searchText}"</h1>
    <h1 class="text-monospace"><g:message code="search.country.name.label"/> "${countryName}"</h1>
    <h1 class="text-monospace"><g:message code="search.all.hotels.label"/> "${hotelList.size()}"</h1>
        <table class="table-bordered">
            <tr>
                <th><g:message code="search.hotel.name.table.label"/> </th>
                <th><g:message code="search.hotel.stardom.table.label"/> </th>
            </tr>
            <g:each in="${hotelList}" var="hotel">
                <tr>
                    <td>
                        ${hotel.name}
                        <g:if test="${hotel.website != null}">
                            <br><a href="${hotel.website}" target="_blank"><g:message code="search.hotel.website.url.label"/> </a>
                        </g:if>
                    </td>
                    <td>
                        ${hotel.stardom}
                    </td>
                </tr>
            </g:each>
        </table>
        <div class="pagination">
            <g:paginate total="${hotelCount ?: 0}"/>
        </div>
</div>
</body>
</html>