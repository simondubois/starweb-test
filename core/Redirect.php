<?php

namespace Core;

/**
 * Immutable redirection.
 */
class Redirect implements Renderable
{
    /**
     * Target path or URL to redirect to.
     *
     * @var string
     */
    protected $target;

    /**
     * Create a new redirect.
     *
     * @param string $target
     */
    public function __construct(string $target)
    {
        $this->target = $target;
    }

    /**
     * @inheritDoc
     */
    public function render(): void
    {
        header("Location: {$this->target}");
    }
}
