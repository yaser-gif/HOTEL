<?php

use phpDocumentor\Reflection\Location;

$dbServer= $_POST['dbServer'];
$dbName= $_POST['dbName'];
$dbLogin= $_POST['dbLogin'];
$dbPassword= $_POST['dbPassword'];
              /////////
                //GENERATE config.env
                /////////
                $output = 'APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:f26QA5s/LvrU7C94IE9sL76J5I5KgfqtkT9KLYuq9Qk=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST='.$dbServer.'
DB_PORT=3306
DB_DATABASE='.$dbName.'
DB_USERNAME='.$dbLogin.'
DB_PASSWORD='.$dbPassword.'

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DRIVER=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=127.0.0.1

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=null
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
SANCTUM_STATEFUL_DOMAINS=.localhost,.localhost:3000

TOKEN_API_PERU="4aa5006add358b4a8c2bbf650e314173b13f13f64ff6d9d5cda2311f9578934a"
TOKEN_API_PERU_2="17530bbe751b5bdd53feeb755674b8050646ff6b1f7db3b4fac40d1b5b37c8fa"
                

'; //default: 300, on 300 seconds greyfish will update collected data to db.';
                /////////
                ///END///
                /////////
 $filehandle = fopen('../.env', 'w');
 fwrite($filehandle, $output);
fclose($filehandle);
$file = file_get_contents("db.sql");
// Connect to database
$mysqli = new mysqli($dbServer, $dbLogin,  $dbPassword,$dbName);

// Get all tables
$tables = array();

$mysqli->multi_query($file);
do {
/* store the result set in PHP */
if ($result = $mysqli->store_result()) {
   while ($row = $result->fetch_row()) {
       printf("%s\n", $row[0]);
   }
}
/* print divider */
if ($mysqli->more_results()) {
//    printf("-----------------\n");
}
} while ($mysqli->next_result());

header('Location: migrate.php');