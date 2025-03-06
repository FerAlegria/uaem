<html lang="es">
	<head>
		<title>Deduccion</title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<h3 align=center></h3>
			</div>
			<form class="form-horizontal" method="POST" action="guardar.php" autocomplete="off">

			<div clas="form-group">
				<label for="idDeduccion" class="col-sm-2">Id Deduccion:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="idDeduccion" name="idDeduccion" placeholder="idDeduccion">
				</div>
			</div>	
			<div class="form-group">
				<label for="nombre" class="col-sm-2 control-label">Nombre:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="nombre" name="nombre" placeholder="nombre" required>
				</div>
			</div>
			<div class="form-group">
				<label for="nomto" class="col-sm-2 control-label">Monto:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="nomto" name="nomto" placeholder="nomto" required>
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