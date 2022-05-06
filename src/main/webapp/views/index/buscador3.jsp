
<%@include file="../../resources/layout/header.jsp"%>
<%@include file="../../resources/layout/navbar.jsp"%>

<section id="section-search">
	<h3 class="fw-bolder">BUSCAR CONTENIDO</h3>
	<form>
		<div class="row g-3 align-items-center mb-4">
			<div class="col-1">
    			<label for="buscar" class="col-form-label">Buscar:</label>
  			</div>
  			<div class="col-2">
    			<input type="text" id="buscar" class="form-control form-control-sm">
  			</div>
		</div>
		<h4 class="fw-bold">Filtros</h4>
		<span>Use los filtros para refinar sus resultados.</span>
		<div class="row g-3 align-items-center mb-2 mt-4">
			<div class="col-1">
    			<label for="titulo" class="col-form-label fw-bold">Título:</label>
  			</div>
  			<div class="col-4">
    			<input type="text" id="titulo" class="form-control form-control-sm">
  			</div>
  			<div class="col-3">
  			</div>
  			<div class="col-1">
    			<label for="titulo" class="col-form-label search-black fw-bold">Año:</label>
  			</div>
  			<div class="col-1">
    			<input type="text" id="titulo" class="form-control form-control-sm">
  			</div>
		</div>
		<div class="row g-3 align-items-center mb-3 mt-2">
			<div class="col-1">
    			<label for="titulo" class="col-form-label fw-bold">Autor:</label>
  			</div>
  			<div class="col-3">
    			<input type="text" id="titulo" class="form-control form-control-sm">
  			</div>
  			<div class="col-4">
  			</div>
  			<div class="col-1">
    			<!--<button type="submit" class="btn btn-primary">APLICAR</button>-->
    			<a href="buscador2.jsp" class="btn btn-primary" role="button">APLICAR</a>
  			</div>
		</div>
	</form>
</section>
<section id="section-result">
	<a href="buscador2.jsp" class="btn btn-primary" role="button">REGRESAR</a>
	<br>
	<div class="row">
		<div class="col-1"></div>
		<div class="col-3">
			<img src="../../resources/images/pdf.svg" class="img-fluid rounded-start" width="70%" height="70%" alt="...">
		</div>
		<div class="col-6">
			<dl class="row">
				<dt class="col-sm-3">Titulo</dt>
  				<dd class="col-sm-9">Avance Económico y Social Departamental</dd>
  				
  				<dt class="col-sm-3">Autor</dt>
  				<dd class="col-sm-9">Danfort, Ramiro</dd>
  				
  				<dt class="col-sm-3">Descripcion</dt>
  				<dd class="col-sm-9">Una descripción detallada de los avances económicos en cada depatamento del Perú, y de como la sociedad ha favorecido ese avance y como se debe seguir promoviendo y apoyando las iniciativas. Se proponen soluciones viables y se analiza las posturas de los pobladores frente al olvido de muchos por parte del gobierno.</dd>
			
				<dt class="col-sm-3">Fecha de creación</dt>
  				<dd class="col-sm-9">20/12/2000</dd>
  				
  				<dt class="col-sm-3">Tipo de documento</dt>
  				<dd class="col-sm-9">Informe</dd>
			</dl>
		</div>
	</div>
	<h5 class="text-center"><a href="#">Descargar documento en pdf</a></h5>
</section>




<%@include file="../../resources/layout/footer.jsp"%>