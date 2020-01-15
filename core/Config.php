<?php

namespace Core;

/**
 * Class responsible for loading and retrieving configuration values.
 */
class Config
{
    /**
     * Path to the configuration folder.
     *
     * @var string
     */
    protected $path = __DIR__ . '/../config';

    /**
     * Loaded values.
     *
     * @var array<mixed>
     */
    protected $values = [];

    /**
     * Get all values.
     *
     * @return array<mixed>
     */
    protected function all(): array
    {
        if (empty($this->values)) {
            $this->load();
        };

        return $this->values;
    }

    /**
     * Get a value from a given path (using dot notation).
     * If the path does not exist, returns the provided default value or null if no default value is given.
     *
     * @param string $path
     * @param mixed $default
     * @return mixed
     */
    public function get(string $path, $default = null)
    {
        return $this->getRecursively($this->all(), $path, $default);
    }

    /**
     * Get the value whose the key matches next segment in the provided path.
     * If the path does not exist, returns the provided default value.
     *
     * @param array<mixed> $values
     * @param string $path
     * @param mixed $default
     * @return mixed
     */
    protected function getRecursively(array $values, string $path, $default)
    {
        $keys = explode('.', $path);
        $key = array_shift($keys) ?? '';

        if (array_key_exists($key, $values) === false) {
            return $default;
        }

        if (empty($keys)) {
            return $values[$key];
        }

        if (is_array($values[$key]) === false) {
            return $default;
        }

        return $this->getRecursively($values[$key], implode('.', $keys), $default);
    }

    /**
     * Load values from PHP files located in path.
     *
     * @return void
     */
    protected function load(): void
    {
        foreach (glob($this->path . '/*.php') ?: [] as $path) {
            $this->values[basename($path, '.php')] = require($path);
        }
    }
}
