<html lang="es">
	<head>
		<title>Detalle Pago</title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<h3 align=center>Detalle Pago</h3>
			</div>
			<form class="form-horizontal" method="POST" action="guardar.php" autocomplete="off">

			<div clas="form-group">
				<label for="Folio" class="col-sm-2">Folio:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="Folio" name="Folio" placeholder="Folio">
				</div>
			</div>
			<div class="form-group">
				<label for="idEmpleado" class="col-sm-2 control-label">Id Empleado:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="idEmpleado" name="idEmpleado" placeholder="idEmpleado" required>
				</div>
			</div>
			<div class="form-group">
				<label for="idCargo" class="col-sm-2 control-label">Id Cargos:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="idCargo" name="idCargo" placeholder="idCargo" required>
				</div>
			</div>
			<div class="form-group">
				<label for="fechaPago" class="col-sm-2 control-label">Fecha de Pago:</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="fechaPago" name="fechaPago" placeholder="fechaPago" required>
				</div>
			</div>	
			<div class="form-group">
				<label for="periodoPago" class="col-sm-2 control-label">Periodo de pago:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="periodoPago" name="periodoPago" placeholder="periodoPago" required>
				</div>
			</div>	
			<div class="form-group">
				<label for="diasTrabajados" class="col-sm-2 control-label">Dias Trabajados:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="diasTrabajados" name="diasTrabajados" placeholder="diasTrabajados" required>
				</div>
			</div>	
			<div class="form-group">
				<label for="totalFaltas" class="col-sm-2 control-label">Total de faltas:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="totalFaltas" name="totalFaltas" placeholder="totalFaltas" required>
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
 