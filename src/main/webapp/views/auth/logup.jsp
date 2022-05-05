<%@include file="../../resources/layout/header.jsp"%>

<div class="row container-login">
	<div class="col-7 container-logo">
	</div>
	<div class="col-5 text-center container-form">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form>
					<div class="mb-3">
						<label for="user" class="form-label fw-bolder">USUARIO</label>
						<input type="text" class="form-control" id="user" placeholder="Usuario">
					</div>
					<div class="mb-3">
						<label for="name" class="form-label fw-bolder">NOMBRES Y APELLIDOS</label>
						<input type="text" class="form-control" id="name" placeholder="Nombres y Apellidos">
					</div>
					<div class="mb-3">
						<label for="mail" class="form-label fw-bolder">CORREO</label>
						<input type="email" class="form-control" id="mail" placeholder="Correo Electrónico">
					</div>
					<div class="mb-3">
						<label for="pass" class="form-label fw-bolder">CONTRASEÑA</label>
						<input type="password" class="form-control" id="pass" placeholder="Contraseña">
					</div>
					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-primary">CREAR</button>
					</div>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</div>

<%@include file="../../resources/layout/footer.jsp"%>