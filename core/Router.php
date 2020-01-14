<?php

namespace Core;

/**
 * Class responsible for registering routes and matching HTTP requests.
 */
class Router
{
    /**
     * Path to the route definition file.
     *
     * @var string
     */
    protected $path = __DIR__ . '/../routes.php';

    /**
     * Loaded routes.
     *
     * @var array<Route>
     */
    protected $routes = [];

    /**
     * Load routes from file.
     *
     * @return void
     */
    protected function load(): void
    {
        require($this->path);
    }

    /**
     * Create and register a new route.
     *
     * @param string $method
     * @param string $uri
     * @param string $controllerName
     * @param string $controllerMethod
     * @return void
     */
    public function register(string $method, string $uri, string $controllerName, string $controllerMethod = null): void
    {
        $this->routes[] = new Route($method, $uri, $controllerName, $controllerMethod);
    }

    /**
     * Resolve the given method and uri against the registered routes.
     * Return null if no route matches the method and uri.
     *
     * @param string $method
     * @param string $uri
     * @return Route|null
     */
    public function resolve(string $method, string $uri): ?Route
    {
        $this->load();

        $matchingRoutes = array_filter($this->routes(), function (Route $route) use ($method, $uri): bool {
            return $this->routeMatches($route, $method, $uri);
        });

        if (empty($matchingRoutes)) {
            return null;
        }

        return reset($matchingRoutes);
    }

    /**
     * Does the provided route matches the provided method and uri?.
     *
     * @param Route $route
     * @param string $method
     * @param string $uri
     * @return boolean
     */
    protected function routeMatches(Route $route, string $method, string $uri): bool
    {
        if (strcasecmp($route->method(), 'any') && strcasecmp($route->method(), $method)) {
            return false;
        }

        return strcmp($route->uri(), $uri) === 0;
    }

    /**
     * Get all routes.
     *
     * @return array<Route>
     */
    public function routes(): array
    {
        if (empty($this->routes)) {
            $this->load();
        }

        return $this->routes;
    }
}
