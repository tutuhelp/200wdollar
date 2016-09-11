<?php
// Seven Add
define('HTTP_DOMAIN', 'opencart.web');
define('BASE_PATH', 'D:/www/opencart/');
define('ADMIN_DIR', 'admin/');

// HTTP
define('HTTP_SERVER', 'http://opencart.web/admin/');
define('HTTP_CATALOG', 'http://opencart.web/');

// HTTPS
define('HTTPS_SERVER', 'http://opencart.web/admin/');
define('HTTPS_CATALOG', 'http://opencart.web/');

// DIR
define('DIR_APPLICATION', BASE_PATH.ADMIN_DIR);
define('DIR_SYSTEM', BASE_PATH.'system/');
define('DIR_IMAGE', BASE_PATH.'image/');
define('DIR_LANGUAGE', BASE_PATH.ADMIN_DIR.'language/');
define('DIR_TEMPLATE', BASE_PATH.ADMIN_DIR.'view/template/');
define('DIR_CONFIG', BASE_PATH.'system/config/');
define('DIR_CACHE', BASE_PATH.'system/storage/cache/');
define('DIR_DOWNLOAD', BASE_PATH.'storage/download/');
define('DIR_LOGS', BASE_PATH.'system/storage/logs/');
define('DIR_MODIFICATION', BASE_PATH.'system/storage/modification/');
define('DIR_UPLOAD', BASE_PATH.'system/storage/upload/');
define('DIR_CATALOG', BASE_PATH.'catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '127.0.0.1');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'admin');
define('DB_DATABASE', 'opencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
