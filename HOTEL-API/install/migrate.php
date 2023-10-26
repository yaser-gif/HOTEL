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
                <li class="selected">Configuración para red local</li>
                <li >Instalación de la completa</li>
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
                            <li>Configuración para red local</li>
                            <li>Instalación de la completa</li>
                        </ul>
                    </div>
              

                
                    <h2 id="licenses-agreement">Configuración para red local</h2>
                    <p>
                    <div class="markdown prose w-full break-words dark:prose-invert light">
                        <p>Aquí te dejo un ejemplo de los pasos para agregar un host virtual en XAMPP:</p>
                        <ol>
                            <li>
                                <p>Abra el archivo httpd-xampp.conf. Puede encontrar este archivo en la carpeta "conf/extra" dentro de la carpeta de instalación de XAMPP.</p>
                            </li>
                            <li>
                                <p>Agregue la siguiente configuración al final del archivo, reemplazando [PORT] con el puerto donde se ejecutará este software :</p>
                            </li>
                        </ol>
                        <iframe src="../public/api/db" scrolling="no" id="prestastore">
                            <p><a href="https://addons.prestashop.com/" target="_blank">¡Echa un vistazo a PrestaShop Addons para añadir funciones extra a tu tienda!</a></p>
                        </iframe>
                        <ol start="3">
                         
                            <li>
                                <p>Guarde y cierre el archivo.</p>
                            </li>
                            <li>
                                <p>Reinicie Apache en XAMPP.</p>
                            </li>
                            <li>
                                <p>Abra una terminal de windows, ejecute "ipconfig". Con este paso obtendra la IP local de su maquina.</p>
                            </li>
                            <li>
                                <p>Abra su navegador web y vaya a con la IP local de esta computadora por ejemplo:"<a href="http://192.168.1.7:8000/" style="color:red" target="_new">http://192.168.1.7:8000</a>". Debería ver la página de inicio de su proyecto de XAMPP.</p>
                            </li>
                            <li>
                                <p>Si todo esta correcto puedes ingresar a la url con sus propios parametros en los dispositivos conectados de su red local.</p>
                            </li>
                        </ol>
                        <p>Con estos pasos, ha agregado con éxito un host virtual en XAMPP. Ahora puede utilizar su proyecto de manera local en su propia URL.</p>
                    </div>
                    </p>
                   

                </div><!-- div id="sheet_step" -->
            </div><!-- div id="sheets" -->

            <div id="buttons">
            <a id="btNext" class="button little"  href="finish.php">Siguiente</a>
			
			
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