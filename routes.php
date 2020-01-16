<?php

/*
 * This file is required by Core/Router::load().
 */

$this->register('get', '/', App\Controllers\PostController::class, 'index');
