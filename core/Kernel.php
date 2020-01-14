<?php

namespace Core;

/**
 * Meta class responsible for booting and resolving requests.
 */
class Kernel
{
    /**
     * Router instance.
     *
     * @var Router
     */
    protected $router;

    /**
     * Boot the kernel.
     *
     * @param Router $router
     */
    public function __construct(Router $router)
    {
        $this->router = $router;
    }

    /**
     * Process HTTP request and send the result.
     *
     * @param string $method
     * @param string $uri
     * @return void
     */
    public function processHttpRequest(string $method, string $uri): void
    {
        $route = $this->router->resolve($method, $uri);
    }
}
