<?php 
/**
* 
*/
	class InicioController extends Controller
	{

		public function __construct(){
			$this->model = new InicioModel();
		}
		
		public function inicio(){
			require_once('vistas/header.php');
			require_once('vistas/inicio/inicio.php');
			require_once('vistas/footer.php');
		}

		public function error(){
			require_once('vistas/inicio/error.php');
		} 
	}
?>