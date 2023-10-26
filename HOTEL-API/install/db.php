<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	<title>Asistente para la instalación de Software</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache" content="no store">
	<meta http-equiv="Expires" content="-1">
	<meta name="robots" content="noindex">

	<link rel="stylesheet" type="text/css" media="all" href="theme/view.css">

	
    <script type="text/javascript" src="../js/jquery/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery/jquery-migrate-3.1.0.min.js"></script>
    <script type="text/javascript" src="../js/jquery/plugins/jquery.chosen.js"></script>
	<script type="text/javascript" src="theme/js/install.js"></script>
	<script type="text/javascript" src="https://www.prestashop.com/js/user-assistance.js"></script>
			<script type="text/javascript" src="../js/database.js"></script>
		<script type="text/javascript">
		var ps_base_uri = '/prestashop/';
		var ps_version = '1.7.8.8';
	</script>
</head>

<body>
<div id="container">

<!-- Header -->
<div id="header" class="clearfix">
	<ul id="headerLinks">
		<li class="lnk_forum"><a href="https://www.prestashop.com/forums/" target="_blank" rel="noopener noreferrer">Foro</a></li>
		<li class="lnk_forum"><a href="https://www.prestashop.com/support" target="_blank" rel="noopener noreferrer">Soporte</a></li>
		<li class="lnk_forum"><a href="https://doc.prestashop.com/display/PS17/Installing+PrestaShop" target="_blank" rel="noopener noreferrer">Documentación</a></li>
		<li class="lnk_blog last"><a href="https://www.prestashop.com/blog/" target="_blank" rel="noopener noreferrer">Blog</a></li>
		<!--
					<li id="phone_block" class="last">
				<div><span>¡Contáctenos!</span><br />+ 57 3137848688</div>
			</li>
				-->
	</ul>

	<div>
                <img src="theme/img/logo.png" width="150" alt="">
            </div>
</div>

<!-- Ajax loader animation -->
<div id="loaderSpace">
	<div id="loader">&nbsp;</div>
</div>

<!-- List of steps -->
<div id="leftpannel">
	<ol id="tabs">
	<li class="finished"><a href="index.php">Bienvenida</a></li>
												<li class="finished" >Acuerdos de licencia</li>
                                            
                            <li class="selected">Configuración del sistema</li>
                            <li >Configuración para red local</li>
                            <li>Instalación de la completa</li>
						</ol>
	
		</iframe>
	</div>

<!-- Page content -->
<form id="mainForm" action="test.php" method="post">
<div id="sheets" class="sheet shown">
	<div id="sheet_database" class="sheet shown clearfix">
	<div class="contentTitle">
		<h1>Asistente de instalación</h1>
		<ul id="stepList_1" class="stepList clearfix">
                            <li class="ok">Bienvenida</li>
                            <li class="ok">Acuerdos de licencia</li>
                            <li >Configuración del sistema</li>
                            <li >Configuración para red local</li>
                            <li>Instalación de la completa</li>
					</ul>
	</div>
	

<!-- Database configuration -->
<div id="dbPart">
	<h2>Configura la conexión a la base de datos rellenando los siguientes campos</h2>
	<p>
		Para utilizar el software, debes <a href="#" style="color:red" target="_blank">crear una base de datos</a> para guardar todos los datos relacionados con las actividades de tu tienda.		<br>
		Por favor, rellena los siguientes campos para conectar el software a tu base de datos.	</p>

	<div id="formCheckSQL">
		<p class="first" style="margin-top: 15px;">
			<label for="dbServer">Dirección del servidor de la base de datos </label>
			<input size="25" class="text" type="text" id="dbServer" name="dbServer" value="127.0.0.1">
			<span class="userInfos aligned">El puerto predeterminado es el 3306. Si utilizas un puerto diferente, añade el número del puerto al final de la dirección del tu servidor, por ejemplo ":4242".</span>
		</p>
		<p>
			<label for="dbName">Nombre de la base de datos </label>
			<input size="10" class="text" type="text" id="dbName" name="dbName" value="api_demo">
		</p>
		<p>
			<label for="dbLogin">Usuario de la base de datos </label>
			<input class="text" size="10" type="text" id="dbLogin" name="dbLogin" value="root">
		</p>
		<p>
			<label for="dbPassword">Contraseña de la base de datos </label>
			<input class="text" size="10" type="password" id="dbPassword" name="dbPassword" value="">
		</p>
	
		<p class="aligned last">
			<input id="btTestDB" class="button" type="button" value="¡Comprobar la conexión con tu base de datos!">
		</p>

		<input class="text" type="hidden" id="rewrite_engine" name="rewrite_engine" value="1">

					<p id="dbResultCheck" style="display: none;"></p>
			</div>
</div>

	</div><!-- div id="sheet_step" -->
</div><!-- div id="sheets" -->

<div id="buttons">
						<input id="btNext" class="button little" type="submit" name="submitNext" value="Siguiente">
			
		
	</div>
</form>

<script type="text/javascript">
	if (typeof psuser_assistance != 'undefined')
	{
		var errors = new Array();
		$.each($('li.fail'), function(i, item){
			errors.push($(this).text().trim());
		});
		psuser_assistance.setStep('install_database', {'error': errors + ' || {"version": "' + ps_version + '"}'});
		if (errors.length)
			$('#iframe_help').attr('src', $('#iframe_help').attr('src') + '&errors=' + encodeURI(errors.join(', ')));
	}
</script>


</body></html>