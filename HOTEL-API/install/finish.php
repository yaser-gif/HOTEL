<html xmlns="http://www.w3.org/1999/xhtml">

<head>
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
    <script type="text/javascript" src="theme/js/process.js"></script>
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
                <li class="finished"><a href="#" rel="index.php">Bienvenida</a></li>
                <li class="finished"><a href="#" rel="terminos.php">Acuerdos de licencia</a></li>
                <li class="finished"><a href="#" rel="">Configuración del sistema</a></li>
                <li class="finished">Configuración para red local</li>
                <li class="selected">Instalación de la completa</li>
            </ol>

        </div>

        <!-- Page content -->
        <form id="mainForm" action="index.php" method="post">
            <div id="sheets" class="sheet shown">
                <div id="sheet_process" class="sheet shown clearfix">
                    <div class="contentTitle">
                        <h1>Asistente de instalación</h1>
                        <ul id="stepList_1" class="stepList clearfix">
                            <li class="ok">Bienvenida</li>
                            <li class="ok">Acuerdos de licencia</li>
                            <li class="ok">Configuración del sistema</li>
                            <li class="ok">Configuración para red local/li>
                            <li>Instalación de la completa</li>
                        </ul>
                    </div>
                    
                    <script type="text/javascript">

                    </script>

                    <div id="install_process_form">
                        <div id="progress_bar" style="display: block;">
                            <h2 id="licenses-agreement">Configuración Completa</h2>
                            <p>
                                ¡Felicidades! La instalación del software de hoteles de Jhony Creativo se ha completado con éxito. Ahora puede iniciar sesión en el software para comenzar a administrar su hotel.
                            </p>
                            <p>
                                A continuación, encontrará las credenciales de acceso necesarias para iniciar sesión:
                            <p>
                                <strong>Usuario:</strong> demo@demo.com <br>
                                <strong>Password:</strong> 1234
                            </p>
                            <p>
                                Le recomendamos encarecidamente que cambie su contraseña después de iniciar sesión por primera vez para garantizar la seguridad de su cuenta.
                            </p>
                        </div>
                    </div>
                
                    <p>
                                <strong>Importante:</strong> Elimine la carpeta "install" y el archivo "index.php" de este proyecto, para evitar posibles errores. <br>
             
                            </p>

                </div><!-- div id="sheet_step" -->
            </div><!-- div id="sheets" -->

            <div id="buttons">
       
			

	</div>
        </form>
        
   
    <script type="text/javascript">
        if (typeof psuser_assistance != 'undefined') {
            var errors = new Array();
            $.each($('li.fail'), function(i, item) {
                errors.push($(this).text().trim());
            });
            psuser_assistance.setStep('install_process', {
                'error': errors + ' || {"version": "' + ps_version + '"}'
            });
            if (errors.length)
                $('#iframe_help').attr('src', $('#iframe_help').attr('src') + '&errors=' + encodeURI(errors.join(', ')));
        }
    </script>


</body>

</html>