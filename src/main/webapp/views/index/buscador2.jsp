
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
	<h5 class="text-center">Mostrando resultados</h5>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center mb-4">
			<li class="page-item"><a class="page-link" href="#">Anterior</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item disabled"><a class="page-link" href="#">...</a></li>
			<li class="page-item"><a class="page-link" href="#">99</a></li>
			<li class="page-item"><a class="page-link" href="#">100</a></li>
			<li class="page-item"><a class="page-link" href="#">Siguiente</a></li>
		</ul>
	</nav>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<div class="card mb-3 mt-3">
				<div class="row g-0">
					<div class="col-md-4">
						<img src="../../resources/images/pdf.svg" class="img-fluid rounded-start" width="80%" height="80%" alt="...">
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title"><a href="buscador3.jsp">"Avance Económico y Social Departamental", Diciembre 2000.</a></h5>
							<p class="card-text">Danfort, Ramiro</p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="card mb-3 mt-3">
				<div class="row g-0">
					<div class="col-md-4">
						<img src="../../resources/images/pdf.svg" class="img-fluid rounded-start" width="80%" height="80%" alt="...">
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title">"Indicadores de Precios de la Economía", Marzo 2001.</h5>
							<p class="card-text">Palomino , Amelia</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-3"></div>
	</div>
	
</section>




<%@include file="../../resources/layout/footer.jsp"%>