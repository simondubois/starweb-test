<?php

namespace Core;

/**
 * Immutable HTTP route.
 */
class Route
{
    /**
     * HTTP method.
     *
     * @var string
     */
    protected $method;

    /**
     * HTTP uri.
     *
     * @var string
     */
    protected $uri;

    /**
     * Controller to be called when this route is requested.
     *
     * @var string
     */
    protected $controllerName;

    /**
     * Controller method to be called when this route is requested.
     * If null, the controller will be called as a function.
     *
     * @var string|null
     */
    protected $controllerMethod;

    /**
     * Create a new route.
     *
     * @param string $method
     * @param string $uri
     * @param string $controllerName
     * @param string $controllerMethod
     */
    public function __construct(string $method, string $uri, string $controllerName, string $controllerMethod = null)
    {
        $this->method = $method;
        $this->uri = $uri;
        $this->controllerName = $controllerName;
        $this->controllerMethod = $controllerMethod;
    }

    /**
     * Get the controller method name.
     *
     * @return string|null
     */
    public function controllerMethod(): ?string
    {
        return $this->controllerMethod;
    }

    /**
     * Get the controller name.
     *
     * @return string
     */
    public function controllerName(): string
    {
        return $this->controllerName;
    }

    /**
     * Get the HTTP method.
     *
     * @return string
     */
    public function method(): string
    {
        return $this->method;
    }

    /**
     * Get the HTTP uri.
     *
     * @return string
     */
    public function uri(): string
    {
        return $this->uri;
    }
}
