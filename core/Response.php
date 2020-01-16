<?php

namespace Core;

/**
 * Response builder.
 */
class Response implements Renderable
{
    /**
     * HTTP status code.
     *
     * @var mixed
     */
    protected $code = 200;

    /**
     * Response data.
     *
     * @var Renderable|null
     */
    protected $body = null;

    /**
     * Path to the view folder.
     *
     * @var string
     */
    protected $viewPath;

    /**
     * Make a new response.
     *
     * @param Config $config
     */
    public function __construct(Config $config)
    {
        $this->viewPath = $config->get('response.view.path');
    }

    /**
     * Set the response body.
     *
     * @param Renderable $body
     * @return void
     */
    public function body(Renderable $body): void
    {
        $this->body = $body;
    }

    /**
     * Set the HTTP status code.
     * Return itself for chaining.
     *
     * @param integer $code
     * @return Response
     */
    public function code(int $code): Response
    {
        $this->code = $code;

        return $this;
    }

    /**
     * Build a redirection and use it as response body.
     * Return itself for chaining.
     *
     * @param string $target
     * @return Response
     */
    public function redirect(string $target): Response
    {
        $this->body(new Redirect($target));

        return $this;
    }

    /**
     * @inheritDoc
     */
    public function render(): void
    {
        http_response_code($this->code);

        if ($this->body instanceof Renderable) {
            $this->body->render();
        }
    }

    /**
     * Build a new view and use it as response body.
     * Return itself for chaining.
     *
     * @param string $name
     * @param array<mixed> $data
     * @return Response
     */
    public function view(string $name, array $data = []): Response
    {
        $this->body(new View($this->viewPath, $name, $data));

        return $this;
    }
}
