<?php

namespace Core;

/**
 * Meta class responsible for booting and resolving requests.
 */
class Kernel
{
    /**
     * Process HTTP request and send the result.
     *
     * @param string $method
     * @param string $uri
     * @return void
     */
    public function processHttpRequest(string $method, string $uri): void
    {
        echo 'Request processed.';
    }
}
