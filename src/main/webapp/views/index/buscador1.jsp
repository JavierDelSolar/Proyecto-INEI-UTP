
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
	<h3 class="fw-bolder">Los resultados se mostrarán si realizar la búsqueda</h3>
	
</section>




<%@include file="../../resources/layout/footer.jsp"%>