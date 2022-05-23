<%@include file="../../resources/layout/header.jsp"%>
<%@include file="../../resources/layout/navbar.jsp"%>
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


<%@include file="../../resources/layout/footer.jsp"%>