<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url var="createTicketUrl" value="/tickets.html" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Contact technical support</title>
	</head>
	<body>
		<h1>Contact technical support</h1>
		
		<p>If you are having technical difficulties and can't find the answer you need in the Knowledge Base, please
		contact technical support using the form below. We will get back to you within one business day.</p>
		
		<form:form modelAttribute="ticket" action="${createTicketUrl}" cssClass="main">
			<div class="formItem">
				<div>Your name:</div>
				<div><form:input path="userName" cssClass="medium" /></div>
				<form:errors path="userName">
					<div class="fieldError">
						<form:errors path="userName" />
					</div>
				</form:errors>
			</div>
			<div class="formItem">
				<div>Your e-mail:</div>
				<div><form:input path="userEmail" cssClass="medium" /></div>
				<form:errors path="userEmail">
					<div class="fieldError">
						<form:errors path="userEmail" />
					</div>
				</form:errors>
			</div>
			<div class="formItem">
				<div>Please describe the issue:</div>
				<div><form:textarea path="description" cssClass="long" rows="8" /></div>
				<form:errors path="description">
					<div class="fieldError">
						<form:errors path="description" />
					</div>
				</form:errors>
			</div>
			<div class="formItem submit"><input type="submit" value="Create"></input></div>
		</form:form>
	</body>
</html>