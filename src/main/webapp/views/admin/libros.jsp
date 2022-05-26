<%@page import="Model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="Config.Constants"%>
<%@include file="../../resources/layout/header.jsp"%>
<%@include file="../../resources/layout/navbar.jsp"%>
<script src="<%=request.getContextPath()%>/views/admin/js/js.js"></script>
<section id="section-search">
	<h3 class="fw-bolder">AGREGAR LIBROS</h3>
	<form action="admin" method="post" enctype="multipart/form-data"><!-- enctype="multipart/form-data" -->
		<input type="hidden" name="accion" value="subir">
		<div class="row align-items-center">
			<div class="col-2">
				<label for="nombre" class="col-form-label">Nombre</label>
			</div>
  			<div class="col-4">
    			<input type="text" id="nombre" name="nombre" class="form-control form-control-sm">
  			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-2">
				<label for="descripcion" class="col-form-label">Descripcion</label>
			</div>
  			<div class="col-4">
    			<input type="text" id="descripcion" name="descripcion" class="form-control form-control-sm">
  			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-2">
				<label for="autor" class="col-form-label">Autor</label>
			</div>
  			<div class="col-4">
    			<input type="text" id="autor" name="autor" class="form-control form-control-sm">
  			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-2">
				<label for="fecha" class="col-form-label">Fecha Publicación</label>
			</div>
  			<div class="col-2">
    			<input type="date" id="fecha" name="fecha" class="form-control form-control-sm">
  			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-2">
				<label for="imagen" class="col-form-label">Imagen</label>
			</div>
  			<div class="col-4">
    			<input class="form-control form-control-sm" id="imagen" name="imagen" type="file">
  			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-2">
				<label for="pdf" class="col-form-label">PDF</label>
			</div>
  			<div class="col-4">
    			<input class="form-control form-control-sm" id="pdf" name="pdf" type="file">
  			</div>
		</div>
		<div class="row align-items-center mt-2">
			<div class="col-2">
			</div>
  			<div class="col-4">
    			<button type="submit" class="btn btn-sm btn-primary mb-3">Subir Libro</button>
  			</div>
		</div>
	</form>
</section>
<section id="section-result">

	<div class="row">
		<div class="col-2"></div>
		<div class="col">
			<table id="result" class="table table-striped" style="width:100%">
		        <thead>
		            <tr>
		            	<th>ID</th>
		                <th>Titulo</th>
		                <th>Descripcion</th>
		                <th>Autor</th>
		                <th>Fecha</th>
		                <th>Control</th>
		            </tr>
		        </thead>
				<tbody>
				<% 
					List<Libro> list = (List<Libro>)request.getAttribute("Lista");
					for(Libro libro: list){
				%>
					<tr>
						<td class="text-center">
							<%= libro.getId()%>
						</td>
						<td class="text-center">
							<input type="text" class="form-control form-control-sm" name="titulo" data-libro="<%= libro.getId()%>" value="<%= libro.getNombre()%>">
						</td>
						<td class="text-center">
							<input type="text" class="form-control form-control-sm" name="descripcion" data-libro="<%= libro.getId()%>" value="<%= libro.getDescripcion()%>">
						</td>
						<td class="text-center">
							<input type="text" class="form-control form-control-sm" name="autor" data-libro="<%= libro.getId()%>" value="<%= libro.getAutor()%>">
						</td>
						<td class="text-center">
							<input type="date" class="form-control form-control-sm" name="fecha" data-libro="<%= libro.getId()%>" value="<%= libro.getFecha()%>">
						</td>
						<td class="text-center">
							<button class="btn btn-sm btn-danger" data-libro="<%= libro.getId()%>" accion="delete"><i class="fa-solid fa-trash-can"></i></button>
						</td>
					</tr>
				<% } %>
				</tbody>
			</table>	
		</div>
		<div class="col-2"></div>
	</div>
</section>

<%@include file="../../resources/layout/footer.jsp"%>