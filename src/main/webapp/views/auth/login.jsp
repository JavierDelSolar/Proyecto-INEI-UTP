<%@include file="../../resources/layout/header.jsp"%>
<div class="row container-login">
	<div class="col-7 container-logo">
	</div>
	<div class="col-5 text-center container-form">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form action="auth" method="post">
					<input type="hidden" name="accion" value="login">
					<div class="mb-5">
						<label for="user" class="form-label fw-bolder">USUARIO</label>
						<input type="text" class="form-control" id="user" name="user" placeholder="Usuario">
					</div>
					<div class="mb-5">
						<label for="pass" class="form-label fw-bolder">CONTRASEÑA</label>
						<input type="password" class="form-control" id="pass" name="pass" placeholder="Contraseña">
					</div>
					<div class="d-grid gap-2 mb-3">
						<button type="submit" class="btn btn-primary">INGRESAR</button>
					</div>
					<div class="mb-1 link-logup">
						<a href="auth?accion=logup">Crear cuenta</a>
					</div>
				</form>
				<% 
					if(request.getAttribute("Validador") != null){
						if(!(boolean)request.getAttribute("Validador")){
				%>
						<div class="alert alert-danger" role="alert">
						 	Usuario/Contraseña errado
						</div>
				<% 		}
					}
				%>
			</div>
			<div class="col-sm-3"></div>
			
		</div>
	</div>
</div>

<%@include file="../../resources/layout/footer.jsp"%>