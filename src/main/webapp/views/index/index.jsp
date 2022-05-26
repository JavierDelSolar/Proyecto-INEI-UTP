<%@page import="Model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="Config.Constants"%>
<%@include file="../../resources/layout/header.jsp"%>
<%@include file="../../resources/layout/navbar.jsp"%>
<% Constants constants = new Constants(); %>
<section id="section-search" class="section-index">
	<h1>BIENVENIDOS A LA</h1>
	<h1>BIBLIOTECA DIGITAL DE</h1>
	<h1>INEI</h1>
</section>
<section id="libros">
	<h4>Libros Contables</h4>
	<br>
	<div class="row">
		<% 
			List<Libro> list1 = (List<Libro>)request.getAttribute("Lista1");
			int row = 0;
			for(Libro libro: list1){
				row++;
		%>
		<div class="col-sm-1 text-center">
			<a href="<%= request.getContextPath()%>/resources/Files/<%= libro.getRuta_pdf() %>">
				<img src="<%= request.getContextPath()%>/resources/Files/<%= libro.getRuta_imagen() %>" class="img-fluid rounded-start" width="60%" height="60%"><br>
				<span class="fw-bold"><%= constants.MESES[row-1] %>_2000</span>
			</a>
		</div>
		<% } %>
	</div>
	<hr>
	<h4>Libros Presupuestos</h4>
	<br>
	<div class="row">
		<% 
			List<Libro> list2 = (List<Libro>)request.getAttribute("Lista2");
			row = 0;
			for(Libro libro: list2){
				row++;
		%>
		<div class="col-sm-1 text-center">
			<a href="<%= request.getContextPath()%>/resources/Files/<%= libro.getRuta_pdf() %>">
				<img src="<%= request.getContextPath()%>/resources/Files/<%= libro.getRuta_imagen() %>" class="img-fluid rounded-start" width="60%" height="60%"><br>
				<span class="fw-bold"><%= constants.MESES[row-1] %>_2000</span>
			</a>
		</div>
		<% } %>
	</div>
</section>
<%@include file="../../resources/layout/footer.jsp"%>