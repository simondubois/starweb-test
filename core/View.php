<?php

namespace Core;

/**
 * Immutable HTML view.
 */
class View implements Renderable
{
    /**
     * Data to use to render the view.
     *
     * @var array<mixed>
     */
    protected $data;

    /**
     * View filename without extension.
     *
     * @var string
     */
    protected $name;

    /**
     * Path where the view is located.
     *
     * @var string
     */
    protected $path;

    /**
     * Create a new view.
     *
     * @param string $path
     * @param string $name
     * @param array<mixed> $data
     */
    final public function __construct(string $path, string $name, array $data = [])
    {
        $this->path = $path;
        $this->name = $name;
        $this->data = $data;
    }

    /**
     * Return the data value matching the provided name.
     *
     * @param string $key
     * @return mixed
     */
    public function __get(string $key)
    {
        return $this->data[$key];
    }

    /**
     * Echo the provided value after converting characters to HTML entities.
     *
     * @param mixed $value
     * @return void
     */
    protected function echo($value): void
    {
        echo htmlentities($value);
    }

    /**
     * Echo the provided value after converting characters to HTML entities and replacing line breaks with <br> tags.
     *
     * @param mixed $value
     * @return void
     */
    protected function echoBr($value): void
    {
        echo nl2br(htmlentities($value));
    }

    /**
     * Build and render the new view matching the provided name.
     * The provided data will be merged into the current view's data.
     *
     * @param string $name
     * @param array<mixed> $data
     * @return void
     */
    protected function include(string $name, array $data = []): void
    {
        $view = new static($this->path, $name, $data + $this->data);
        $view->render();
    }

    /**
     * @inheritDoc
     */
    public function render(): void
    {
        $supportedPaths = [
            "{$this->path}/{$this->name}.php",
            "{$this->path}/{$this->name}.html",
        ];

        $existingPaths = array_filter($supportedPaths, 'file_exists');

        require reset($existingPaths);
    }
}
