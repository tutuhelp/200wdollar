<?php
// Version
define('VERSION', '2.3.0.2');

// Configuration
require_once('config.php');

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('admin');