<!doctype html>
<html>
    <head>
        <title>Page Not Found</title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
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
        <ul class="errors">
            <li>Error: Page Not Found (404)</li>
            <li>Path: ${request.forwardURI}</li>
        </ul>
    </body>
</html>
