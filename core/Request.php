<?php

namespace Core;

/**
 * Abstract class providing validation for inputs.
 */
abstract class Request
{
    /**
     * Return the request input matching the provided name.
     * If no name is provided, return all inputs.
     * If no input for the given name is defined, the default value is returned.
     *
     * @SuppressWarnings(PHPMD.Superglobals)
     *
     * @param string $name
     * @param mixed $default
     * @return mixed
     */
    public function input(string $name = null, $default = null)
    {
        if (is_null($name)) {
            return $_POST + $_GET;
        }

        return $_POST[$name] ?? $_GET[$name] ?? $default;
    }

    /**
     * Return true if the provided rule is valid for the input matching the provided name.
     *
     * @param callable $rule
     * @param string $name
     * @return bool
     */
    protected function isRuleValid(callable $rule, string $name): bool
    {
        return $rule($this->input($name));
    }

    /**
     * Return values for all validated input.
     *
     * @return array<mixed>
     */
    public function validatedInput(): array
    {
        return array_intersect_key($this->input(), $this->validRules());
    }

    /**
     * Return true if any validation rules fails.
     *
     * @return bool
     */
    public function validationFails(): bool
    {
        return count($this->rules()) !== count($this->validRules());
    }

    /**
     * Return all valid rules.
     *
     * @return array<callable>
     */
    protected function validRules(): array
    {
        return array_filter($this->rules(), [$this, 'isRuleValid'], ARRAY_FILTER_USE_BOTH);
    }

    /**
     * Return an array whose:
     * - keys are the request attributes names to check.
     * - values are callbacks returning true if the value related to the name is valid.
     *
     * @return array<callable>
     */
    abstract protected function rules(): array;
}
