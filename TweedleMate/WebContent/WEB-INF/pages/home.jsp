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
<c:forEach items="${allUsers }" var="u">
	<div id="u.id" style="width:200px; float:left">
		<p>
			<b><a href="<c:out value="/Pofile/${u.id}/${u.firstName}"/>">${u.firstName }</a></b><br>
			${u.email }"
		</p>
	</div>
</c:forEach>
</div>

<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>