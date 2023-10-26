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
			<script type="text/javascript" src="theme/js/license.js"></script>
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
    <?php
                    require_once "./components/links.php";
                ?>
		
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
												<li class="selected">Acuerdos de licencia</li>
                                            
                            <li >Configuración del sistema</li>
                            <li >Configuración para red local</li>
                            <li>Instalación de la completa</li>
						</ol>
			
	</div>

<!-- Page content -->
<form id="mainForm" action="db.php" method="post">
<div id="sheets" class="sheet shown">
	<div id="sheet_license" class="sheet shown clearfix">
	<div class="contentTitle">
		<h1>Asistente de instalación</h1>
		<ul id="stepList_1" class="stepList clearfix">
                            <li class="ok">Bienvenida</li>
                            <li >Acuerdos de licencia</li>
                            <li >Configuración del sistema</li>
                            <li >Configuración para red local</li>
                            <li>Instalación de la completa</li>
					</ul>
	</div>
	<noscript>
		<h4 class="errorBlock" style="margin-bottom:10px">
			Para instalar PrestaShop, necesitas tener Javascript activado en tu navegador.			<a href="https://enable-javascript.com/" target="_blank" rel="noopener noreferrer">
				<img src="theme/img/help.png" style="height:16px;width:16px" />
			</a>
		</h4>
	</noscript>

<!-- License agreement -->
<h2 id="licenses-agreement">Términos y condiciones del acuerdo de licencia</h2>
<p>
Este software de restaurante es propiedad de Jhony Creativo y se concede bajo licencia a usted, el usuario final, para su uso exclusivo. Se le concede el derecho no exclusivo, no transferible y revocable de utilizar este software en un solo dispositivo.

<p><strong>Restricciones de uso.</strong> No se le permite copiar, modificar, descompilar, desensamblar, realizar ingeniería inversa o distribuir este software. No se le permite utilizar este software para actividades ilegales o no autorizadas.
</p>
<p><strong>Propiedad intelectual. </strong>Este software es propiedad de Jhony Creativo y está protegido por las leyes de propiedad intelectual. No se le concede ningún derecho sobre la propiedad intelectual, incluyendo patentes, derechos de autor, marcas comerciales o secretos comerciales.
</p>
<p><strong>Garantías. </strong>Este software se proporciona "tal cual" sin garantías de ningún tipo, ya sean expresas o implícitas, incluyendo, entre otras, las garantías de comerciabilidad o adecuación para un propósito particular.
</p>
<p><strong>Responsabilidad. </strong>Jhony Creativo no será responsable de ningún daño directo, indirecto, incidental, especial o consecuente que surja del uso de este software.
</p>
<p><strong>Duración.</strong> Esta licencia puede ser rescindida en cualquier momento si se incumplen los términos de la licencia.
</p>
<p><strong>Ley aplicable.</strong> Estos términos de licencia se rigen por las leyes del país Perú, y cualquier disputa relacionada con estos términos se resolverá en los tribunales del país [nombre del país].
</p>
Al instalar y utilizar este software de restaurante, usted acepta todos los términos y condiciones de esta licencia. Si no está de acuerdo con estos términos, no instale ni utilice este software.
</p>

	<input type="checkbox" id="set_license" class="required" name="licence_agrement" value="1" style="vertical-align: middle;float:left">
	<div style="float:left;width:600px;margin-left:8px"><label for="set_license"><strong>Acepto los términos y condiciones arriba indicados.</strong></label></div>
</div>

	</div><!-- div id="sheet_step" -->

<div id="buttons">
						<input id="btNext" class="button little disabled" type="submit" name="submitNext" value="Siguiente" >
			
	
	</div>
</form>

<script type="text/javascript">
	if (typeof psuser_assistance != 'undefined')
	{
		var errors = new Array();
		$.each($('li.fail'), function(i, item){
			errors.push($(this).text().trim());
		});
		psuser_assistance.setStep('install_license', {'error': errors + ' || {"version": "' + ps_version + '"}'});
		if (errors.length)
			$('#iframe_help').attr('src', $('#iframe_help').attr('src') + '&errors=' + encodeURI(errors.join(', ')));
	}
</script>


</body></html>