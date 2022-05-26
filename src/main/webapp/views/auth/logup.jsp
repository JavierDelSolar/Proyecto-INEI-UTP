<%@include file="../../resources/layout/header.jsp"%>

<div class="row container-login">
	<div class="col-7 container-logo">
	</div>
	<div class="col-5 text-center container-form">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form action="auth" method="post">
					<input type="hidden" name="accion" value="logup">
					<div class="mb-3">
						<label for="user" class="form-label fw-bolder">USUARIO</label>
						<input type="text" class="form-control" id="user" name="user" placeholder="Usuario">
					</div>
					<div class="mb-3">
						<label for="name" class="form-label fw-bolder">NOMBRES Y APELLIDOS</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Nombres y Apellidos">
					</div>
					<div class="mb-3">
						<label for="mail" class="form-label fw-bolder">CORREO</label>
						<input type="email" class="form-control" id="mail" name="mail" placeholder="Correo Electrónico">
					</div>
					<div class="mb-3">
						<label for="pass" class="form-label fw-bolder">CONTRASEÑA</label>
						<input type="password" class="form-control" id="pass" name="pass" placeholder="Contraseña">
					</div>
					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-primary">CREAR</button>
					</div>
				</form>
				<br>
				<% 
					if(request.getAttribute("Validador") != null){
						if(!(boolean)request.getAttribute("Validador")){
				%>
						<div class="alert alert-danger" role="alert">
						 	Usuario duplicado, intente con otro!!!
						</div>
				<% 		}else{ %>
						<div class="alert alert-success" role="alert">
						 	Usuario creado con exito!!! <a href="<%=request.getContextPath()%>/auth">Regresar...</a>
						</div>
				<%
						}
					}
				%>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</div>

<%@include file="../../resources/layout/footer.jsp"%>