<?php

/*
 * This file is required by Core/Router::load().
 */

$this->register('get', '/', App\Controllers\PostController::class, 'index');
$this->register('get', '/create', App\Controllers\PostController::class, 'create');
$this->register('post', '/store', App\Controllers\PostController::class, 'store');
