<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a href="${createLink(uri: '/')}">New Search</a></li>
    </ul>
</div>

<div id="list-hotel" class="content scaffold-list" role="main">
    <h1>Search result</h1>

    <h1>Total: "${hotelList.size()}"
        <table>
            <tr>
                <th>Name</th>
                <th>Stardom</th>
            </tr>
            <g:each in="${hotelList}" var="hotel">
                <tr>
                    <td>
                        ${hotel.name}
                        <g:if test="${hotel.website != null}">
                            <br><a href="${hotel.website}" target="_blank">Go to website</a>
                        </g:if>
                    </td>
                    <td>
                        ${hotel.stardom}
                    </td>
                </tr>
            </g:each>
        </table>
        %{--    <f:table collection="${hotelList}" properties="name, stardom"/>--}%
        <div class="pagination">
            <g:paginate total="${hotelCount ?: 0}"/>
        </div>
</div>
</body>
</html>