<%@ page import="org.nara.Sku" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sku.label', default: 'Sku')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sku" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<g:form action="index" method="GET">
					Search: <g:textField name="query" value="${params.query}"/>
				</g:form>
			
			</ul>
		</div>
		<div id="list-sku" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'sku.name.label', default: 'Sku Name')}" />
						<g:sortableColumn property="description" title="${message(code: 'sku.description.label', default: 'Description')}" />
						<g:sortableColumn property="quantity" title="${message(code: 'sku.quantity.label', default: 'Quantity')}" />
						<th><g:message code="sku.company.label" default="Company" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${skuInstanceList}" status="i" var="skuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${skuInstance.id}">${fieldValue(bean: skuInstance, field: "name")}</g:link></td>
						<td>${fieldValue(bean: skuInstance, field: "description")}</td>
						<td>${fieldValue(bean: skuInstance, field: "quantity")}</td>
						<td>${fieldValue(bean: skuInstance, field: "company")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${skuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
