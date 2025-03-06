<html lang="es">
	<head>
		<title>Cuenta Bancaria</title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<h3 align=center></h3>
			</div>
			<form class="form-horizontal" method="POST" action="guardar.php" autocomplete="off">

			<div clas="form-group">
				<label for="idNomina" class="col-sm-2">Id Nomina</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="idNomina" name="idNomina" placeholder="idNomina">
				</div>
			</div>	
			<div class="form-group">
				<label for="cuentaOrigen" class="col-sm-2 control-label">Cuenta Origen:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="cuentaOrigen" name="cuentaOrigen" placeholder="cuentaOrigen" required>
				</div>
			</div>
			<div class="form-group">
				<label for="cuentaDistino" class="col-sm-2 control-label">Cuenta Destino:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="cuentaDistino" name="cuentaDistino" placeholder="cuentaDistino" required>
				</div>
			</div>	
				<div class="form-group">
				<div clas="col-sm-offset-2 col-sm-10">	
					<a href="index.php" class="btn btn-default">Regresar</a>
					<button type="submit" class= "btn btn-primary">Guardar</button>
				</div>
					</div>
				</div>
			</form>
	</body>
	</html>
 