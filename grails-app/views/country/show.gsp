<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
        <g:set var="entitiesName" value="${message(code:'countries.label', default: 'Countries')}"/>
        <g:set var="showEntityName" value="${message(code: 'country.show.label', default: 'Country')}"/>
        <title><g:message code="default.show.label" args="[showEntityName]" /></title>
    </head>
    <body>
        <a href="#show-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="buttons" href="${createLink(uri: '/')}"><g:message code="hotel.all.label"
                                                                                 default="All Hotels"/></a></li>
                <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="country.all.label"
                                                                                        default="All Countries"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.country.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-country" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[showEntityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="country" />
            <g:form resource="${this.country}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.country}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
