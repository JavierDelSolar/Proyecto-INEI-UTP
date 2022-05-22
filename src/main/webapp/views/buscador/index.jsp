<%@page import="Model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="Config.Constants"%>
<%@include file="../../resources/layout/header.jsp"%>
<%@include file="../../resources/layout/navbar.jsp"%>
<script src="<%=request.getContextPath()%>/views/buscador/js/js.js"></script>
<%
String buscar = request.getAttribute("Buscar")==null?"":(String)request.getAttribute("Buscar");
%>
<section id="section-search">
	<h3 class="fw-bolder">BUSCAR CONTENIDO</h3>
	<form action="buscador" method="post">
		<input type="hidden" name="accion" value="buscar">
		<div class="row g-3 align-items-center mb-4">
			<div class="col-1">
    			<label for="buscar" class="col-form-label">Buscar:</label>
  			</div>
  			<div class="col-2">
    			<input type="text" id="buscar" name="buscar" class="form-control form-control-sm" value="<%= buscar%>">
  			</div>
		</div>
		<h4 class="fw-bold">Filtros</h4>
		<span>Use los filtros para refinar sus resultados.</span>
		<div class="row g-3 align-items-center mb-2 mt-4">
			<div class="col-1">
    			<label for="titulo" class="col-form-label fw-bold">Título:</label>
  			</div>
  			<div class="col-4">
    			<input type="text" id="titulo" name="titulo" class="form-control form-control-sm">
  			</div>
  			<div class="col-3">
  			</div>
  			<div class="col-1">
    			<label for="titulo" class="col-form-label search-black fw-bold">Año:</label>
  			</div>
  			<div class="col-1">
    			<input type="text" id="anio" name="anio" class="form-control form-control-sm">
  			</div>
		</div>
		<div class="row g-3 align-items-center mb-3 mt-2">
			<div class="col-1">
    			<label for="titulo" class="col-form-label fw-bold">Autor:</label>
  			</div>
  			<div class="col-3">
    			<input type="text" id="autor" name="autor" class="form-control form-control-sm">
  			</div>
  			<div class="col-4">
  			</div>
  			<div class="col-1">
    			<button type="submit" class="btn btn-primary">APLICAR</button>
  			</div>
		</div>
	</form>
</section>
<section id="section-result">

	<h5 class="text-center">Mostrando resultados</h5>

	<% if((int)request.getAttribute("Nivel") == 1){ %>
		<h3 class="fw-bolder">Los resultados se mostrarán si realizar la búsqueda</h3>
	<% } %>
	<% 
	if((int)request.getAttribute("Nivel") == 2){ 
		List<Libro> list = (List<Libro>)request.getAttribute("Lista");
	%>
	<div class="row">
		<div class="col-2"></div>
		<div class="col text-center">
			<table id="example" class="table table-striped" style="width:100%">
		        <thead>
		            <tr>
		                <th>Nombre</th>
		                <th>Descripcion</th>
		                <th>Autor</th>
		                <th>Fecha</th>
		            </tr>
		        </thead>
				<tbody>
				<% for(Libro libro: list){ %>
					<tr>
						<td><%= libro.getNombre() %></td>
						<td><%= libro.getDescripcion() %></td>
						<td><%= libro.getAutor() %></td>
						<td><%= libro.getFecha() %></td>
					</tr>
				<% } %>
				</tbody>
			</table>	
		</div>
		<div class="col-2"></div>
	</div>
	<% } %>
</section>


<%@include file="../../resources/layout/footer.jsp"%>