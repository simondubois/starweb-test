<?php

namespace Core;

/**
 * Interface for classes which can be rendered for responses.
 */
interface Renderable
{
    /**
     * Render the class to the browser.
     *
     * @return void
     */
    public function render(): void;
}
