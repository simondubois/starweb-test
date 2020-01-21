<?php

namespace Core;

/**
 * Meta class responsible for booting and resolving requests.
 */
class Kernel
{
    /**
     * Container instance.
     *
     * @var Container
     */
    protected $container;

    /**
     * Router instance.
     *
     * @var Router
     */
    protected $router;

    /**
     * Boot the kernel.
     *
     * @param Container $container
     * @param Router $router
     */
    public function __construct(Container $container, Router $router)
    {
        $this->container = $container;
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

        if (is_null($route)) {
            $this->container
                ->call(Response::class, 'notFound')
                ->render();
            return;
        }

        $this->container
            ->call($route->controllerName(), $route->controllerMethod())
            ->render();
    }
}
