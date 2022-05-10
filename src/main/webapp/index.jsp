<%
	String site = new String(request.getContextPath()+"/auth?accion=login");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
%>