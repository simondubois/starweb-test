<?php

namespace Core;

use ReflectionClass;
use ReflectionFunctionAbstract;
use ReflectionParameter;

/**
 * Class responsible for dependency injection.
 */
class Container
{
    /**
     * Singleton instances
     *
     * @var array<object|null>
     */
    protected $singletons = [
        Config::class => null,
        Container::class => null,
        Database::class => null,
        Kernel::class => null,
        Router::class => null,
    ];

    /**
     * Boot the container and store itself in the singleton array.
     */
    public function __construct()
    {
        $this->singletons[Container::class] = $this;
    }

    /**
     * Call the given method name on the given class name with the provided parameters.
     *
     * @param string $className
     * @param string|null $methodName
     * @param array<mixed> $parameters
     * @return mixed
     */
    public function call(string $className, string $methodName = null, array $parameters = [])
    {
        $instance = $this->make($className);
        $methodName = $methodName ?? '__invoke';

        $reflector = new ReflectionClass($className);
        $method = $reflector->getMethod($methodName);

        return $instance->$methodName(...$this->resolveParameters($method, $parameters));
    }

    /**
     * Get an instance for the given class name.
     * If the class exists in the array of singletons, the existing instance is returned.
     * Or if the class name is defined in the array of singletons, a new instance is stored in this array and returned.
     * Or return a new instance.
     *
     * @param string $className
     * @return object
     */
    public function make(string $className): object
    {
        if (isset($this->singletons[$className])) {
            return $this->singletons[$className];
        }

        if (array_key_exists($className, $this->singletons)) {
            $this->singletons[$className] = $this->makeNew($className);
            return $this->make($className);
        }

        return $this->makeNew($className);
    }

    /**
     * Get a new instance for the given class name.
     *
     * @param string $className
     * @return object
     */
    protected function makeNew(string $className): object
    {
        $reflector = new ReflectionClass($className);
        $constructor = $reflector->getConstructor();

        if (is_null($constructor)) {
            return new $className();
        }

        return new $className(...$this->resolveParameters($constructor));
    }

    /**
     * Get values for the given parameter.
     * If the parameter is a class, return an instance from the container.
     * Else, return the default value.
     *
     * @param ReflectionParameter $parameter
     * @return mixed
     */
    protected function resolveParameter(ReflectionParameter $parameter)
    {
        if ($parameter->getClass() instanceof ReflectionClass) {
            return $this->make($parameter->getClass()->getName());
        }

        return $parameter->getDefaultValue();
    }

    /**
     * Get values for all parameters required to call the given function.
     * Parameters not passed in arguments will be resolved by the container.
     *
     * @param ReflectionFunctionAbstract $function
     * @param array<mixed> $providedValues
     * @return array<mixed>
     */
    protected function resolveParameters(ReflectionFunctionAbstract $function, array $providedValues = []): array
    {
        $missingValues = array_slice($function->getParameters(), 0, - count($providedValues) ?: null);

        $newValues = array_map([$this, 'resolveParameter'], $missingValues);

        return $newValues + $providedValues;
    }
}
