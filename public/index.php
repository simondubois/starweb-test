<?php

use Core\Container;
use Core\Kernel;
use Core\Response;

// Include classes from PSR-4 autoloading.
require(__DIR__ . '/../vendor/autoload.php');

// Boot application with container.
$container = new Container();
$kernel = $container->make(Kernel::class);

try {
    // Process HTTP request with server variables.
    $kernel->processHttpRequest($_SERVER['REQUEST_METHOD'], $_SERVER['SCRIPT_URL'] ?? $_SERVER['PHP_SELF']);
} catch (Throwable $thrown) {
    // Render error and exceptions.
    $container
        ->call(Response::class, 'internalServerError', [$thrown])
        ->render();
}
