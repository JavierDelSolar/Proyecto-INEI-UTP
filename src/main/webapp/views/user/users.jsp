<%@page import="Model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% List<User> users = (List<User>)request.getAttribute("users"); %>
	<table>
		<tr>
			<th>Usuario</th>
			<th>Contraseña</th>
		</tr>
		<tbody>
			<% for(User user: users){ %>
			<tr>
				<td><%=user.getUsuario()%></td>
				<td><%=user.getPass()%></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>