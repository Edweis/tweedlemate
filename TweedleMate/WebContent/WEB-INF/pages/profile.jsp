<%@ include file="/WEB-INF/inc/taglib.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home</title>
	<link href="<c:url value="/inc/css/style.css" />" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/inc/js/jquery-3.1.1.js"/>"></script>
	
</head>
<body>
<%@ include file="/WEB-INF/inc/header.jsp" %>




<div id="content">
<p>
	Profile de ${shownUser.firstName} avec l'id  ${shownUser.id}<br/>
	
<c:choose>
	<c:when test="${not empty sessionScope.connectedUser }">
		<a href="<c:url value='MakeAppointment/${shownUser.id }'/>">Make an appointment/contact</a>.
	</c:when>
	<c:otherwise>
		You should be connected to make an appointment.
	</c:otherwise>
</c:choose>
</p>
</div>





<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>