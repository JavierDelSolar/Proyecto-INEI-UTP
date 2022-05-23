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
	<!--  
	<h4>Libros Contables</h4>
	<br>
	<div class="row">
		<% for(int i = 1; i<=12; i++){ %>
		<div class="col text-center">
			<a href="libros.jsp"><img src="<%=request.getContextPath()%>/resources/images/pdf.svg" class="img-fluid rounded-start" width="60%" height="60%" alt="...">
			<br>
			<span class="fw-bold"><%= constants.MESES[i-1] %>_2000</span></a>
		</div>
		<% } %>
	</div>
	<hr>
	<h4>Libros Presupuestos</h4>
	<br>
	<div class="row">
		<% for(int i = 1; i<=12; i++){ %>
		<div class="col text-center">
			<a href="libros.jsp"><img src="<%=request.getContextPath()%>/resources/images/pdf.svg" class="img-fluid rounded-start" width="60%" height="60%" alt="...">
			<br>
			<span class="fw-bold"><%= constants.MESES[i-1] %>_2000</span></a>
		</div>
		<% } %>
	</div>
	-->
</section>
<%@include file="../../resources/layout/footer.jsp"%>