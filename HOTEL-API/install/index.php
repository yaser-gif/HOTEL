<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Asistente para la instalación de Software</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache" content="no store" />
    <meta http-equiv="Expires" content="-1" />
    <meta name="robots" content="noindex" />

    <link rel="stylesheet" type="text/css" media="all" href="theme/view.css" />


    <script type="text/javascript" src="../js/jquery/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery/jquery-migrate-3.1.0.min.js"></script>
    <script type="text/javascript" src="../js/jquery/plugins/jquery.chosen.js"></script>
    <script type="text/javascript" src="theme/js/install.js"></script>
    <script type="text/javascript" src="https://www.prestashop.com/js/user-assistance.js"></script>
    <script type="text/javascript" src="theme/js/welcome.js"></script>
    <script type="text/javascript">
        var ps_base_uri = '/prestash';
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
                <li class="selected">Bienvenida</li>
                <li>Acuerdos de licencia</li>
                <li>Compatibilidad del sistema</li>
                <li>Información de la tienda</li>
                <li>Configuración del sistema</li>
                <li>Instalación de la tienda</li>
            </ol>

        </div>

        <!-- Page content -->
        <form id="mainForm" action="index.php" method="post">
            <div id="sheets" class="sheet shown">
                <div id="sheet_welcome" class="sheet shown clearfix">
                    <div class="contentTitle">
                        <h1>Asistente de instalación</h1>
                        <ul id="stepList_1" class="stepList clearfix">
                            <li>Bienvenida</li>
                            <li >Acuerdos de licencia</li>
                            <li >Configuración del sistema</li>
                            <li >Configuración para red local</li>
                            <li>Instalación de la completa</li>
                        </ul>
                    </div>
                    <noscript>
                        <h4 class="errorBlock" style="margin-bottom:10px">
                            Para instalar PrestaShop, necesitas tener Javascript activado en tu navegador. <a href="https://enable-javascript.com/" target="_blank" rel="noopener noreferrer">
                                <img src="theme/img/help.png" style="height:16px;width:16px" />
                            </a>
                        </h4>
                    </noscript>


                    <h2>Bienvenido al instalador de API KING HOTEL (API) 1.0</h2>
                    <p>¡Bienvenido al instalador de nuestro software para hoteles!

                        Nos complace que hayas decidido instalar nuestro software, diseñado especialmente para ayudarte a administrar tu negocio de manera más eficiente y efectiva.

                        Con nuestro software, podrás llevar un registro detallado de tus ventas, manejar tus inventarios-

                       

                        ¡Gracias por confiar en nosotros! Esperamos que disfrutes de tu nueva herramienta de administración de hoteles y que te ayude a alcanzar el éxito que mereces. Si necesitas ayuda durante la instalación o tienes alguna pregunta, no dudes en contactarnos.</p>
                    <p>Si necesita ayuda no dude en <a href="#" style="color:red" target="_blank">ver este corto tutorial</a>, o <a href="#" style="color:red" target="_blank">consulte nuestra documentación</a>.</p>

                    <!-- List of languages -->
                    

                </div><!-- div id="sheet_step" -->
            </div><!-- div id="sheets" -->

            <div id="buttons">
                
                <a id="btNext" class="button little"  href="terminos.php">Siguiente</a>
            </div>
        </form>
        <div id="phone_help">
            Si necesita ayuda, puede <a href="#" style="color:red" onclick="return !window.open(this.href);">solicitar ayuda</a> a nuestro equipo de soporte. Además, <a href="https://doc.prestashop.com/display/PS17/Installing+PrestaShop" style="color:red" onclick="return !window.open(this.href);">la documentación oficial</a> está aquí para guiarle.</div>
    </div><!-- div id="container" -->

    
    <script type="text/javascript">
      
    </script>
</body>

</html>