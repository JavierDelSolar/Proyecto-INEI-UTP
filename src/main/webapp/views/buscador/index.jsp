<%@page import="Model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="Config.Constants"%>
<%@include file="../../resources/layout/header.jsp"%>
<%@include file="../../resources/layout/navbar.jsp"%>
<script src="<%=request.getContextPath()%>/views/buscador/js/js.js"></script>
<%
String nombre = request.getAttribute("Nombre")==null?"":(String)request.getAttribute("Nombre");
String descripcion = request.getAttribute("Descripcion")==null?"":(String)request.getAttribute("Descripcion");
String autor = request.getAttribute("Autor")==null?"":(String)request.getAttribute("Autor");
String anio = request.getAttribute("Anio")==null?"":(String)request.getAttribute("Anio");
%>
<section id="section-search">
	<h3 class="fw-bolder">BUSCAR CONTENIDO</h3>
	<form action="buscador" method="post">
		<input type="hidden" name="accion" value="buscar">
		<div class="row g-3 align-items-center mb-4">
			<div class="col-1">
    			<label for="nombre" class="col-form-label">Título:</label>
  			</div>
  			<div class="col-2">
    			<input type="text" id="nombre" name="nombre" class="form-control form-control-sm" value="<%= nombre%>">
  			</div>
		</div>
		<h4 class="fw-bold">Filtros</h4>
		<span>Use los filtros para refinar sus resultados.</span>
		<div class="row g-3 align-items-center mb-2 mt-4">
			<div class="col-1">
    			<label for="descripcion" class="col-form-label fw-bold">Descripción:</label>
  			</div>
  			<div class="col-4">
    			<input type="text" id="descripcion" name="descripcion" class="form-control form-control-sm" value="<%= descripcion%>">
  			</div>
  			<div class="col-3">
  			</div>
  			<div class="col-1">
    			<label for="titulo" class="col-form-label search-black fw-bold">Año:</label>
  			</div>
  			<div class="col-1">
    			<input type="text" id="anio" name="anio" class="form-control form-control-sm" value="<%= anio%>">
  			</div>
		</div>
		<div class="row g-3 align-items-center mb-3 mt-2">
			<div class="col-1">
    			<label for="titulo" class="col-form-label fw-bold">Autor:</label>
  			</div>
  			<div class="col-3">
    			<input type="text" id="autor" name="autor" class="form-control form-control-sm" value="<%= autor%>">
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
		<div class="col">
			<table id="result" class="table table-striped" style="width:100%">
		        <thead>
		            <tr>
		                <th></th>
		                <th></th>
		            </tr>
		        </thead>
				<tbody>
				<% for(Libro libro: list){ %>
					<tr>
						<td class="text-center">
							<img src="<%= request.getContextPath()%>/resources/Files/<%= libro.getRuta_imagen() %>" width="80px" height="100px">
						</td>
						<td class="text-start">
							<a href="<%= request.getContextPath()%>/resources/Files/<%= libro.getRuta_pdf() %>"><%= libro.getNombre() %>, <%= libro.getFecha() %></a><br>
							<b>Autor:</b> <span class="fst-italic"><%= libro.getAutor() %></span>
						</td>
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