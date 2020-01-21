<?php

namespace Core;

use Throwable;

/**
 * Response builder.
 */
trait BuildCompleteResponses
{
    /**
     * Setup response for a 500 error.
     * Return itself for chaining.
     *
     * @param Throwable $thrown
     * @return Response
     */
    public function internalServerError(Throwable $thrown): Response
    {
        return $this
            ->code(500)
            ->view('errors/internalServerError', [
                'title' => 'Internal server error',
                'thrown' => $thrown,
            ]);
    }

    /**
     * Setup response for a 404 error.
     * Return itself for chaining.
     *
     * @return Response
     */
    public function notFound(): Response
    {
        return $this
            ->code(404)
            ->view('errors/notFound', ['title' => 'Not found']);
    }

    /**
     * Setup response for a 422 error.
     * Return itself for chaining.
     *
     * @param string $target
     * @return Response
     */
    public function unprocessableEntity(string $target): Response
    {
        return $this
            ->code(302)
            ->redirect($target);
    }
}
