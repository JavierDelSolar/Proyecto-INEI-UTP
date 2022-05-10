<%@page import="java.util.Iterator"%>
<%@page import="Model.User"%>
<%@page import="ModelDAO.UserDAO"%>
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
	
	<table>
		<thead>
			<tr>
				<th>Usuario</th>
				<th>Contraseña</th>
			</tr>
		</thead>
		<tbody>
			<%
				UserDAO userDAO = new UserDAO();
				List<User> list = userDAO.listar();
				Iterator<User> iter = list.iterator();
				User user = null;
				while(iter.hasNext()){
					user = iter.next();
			%>
			<tr>
				<td><%=user.getUsuario()%></td>
				<td><%=user.getPass()%></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>