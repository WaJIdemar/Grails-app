<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'myapp.Country')}" />
        <g:set var="entitiesName" value="${message(code:'countries.label')}"/>
        <g:set var="entityTitle" value="${message(code:'country.show.label')}"/>
        <title><g:message code="default.edit.label" args="[entityTitle]" /></title>
    </head>
    <body>
        <a href="#edit-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="buttons" href="${createLink(uri: '/')}"><g:message code="hotel.all.label"
                                                                                 default="All Hotels"/></a></li>
                <li><a class="buttons" href="${createLink(uri: '/country')}"><g:message code="country.all.label"
                                                                                        default="All Countries"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.country.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-country" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityTitle]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.country}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.country}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.country}" method="PUT">
                <g:hiddenField name="version" value="${this.country?.version}" />
                <fieldset class="form">
                    <f:all bean="country"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
