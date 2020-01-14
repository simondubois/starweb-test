<?php

use Core\Kernel;

// Include classes from PSR-4 autoloading.
require(__DIR__ . '/../vendor/autoload.php');

// Boot application.
$kernel = new Kernel();

// Process HTTP request with server variables.
$kernel->processHttpRequest($_SERVER['REQUEST_METHOD'], $_SERVER['SCRIPT_URL'] ?? $_SERVER['PHP_SELF']);
