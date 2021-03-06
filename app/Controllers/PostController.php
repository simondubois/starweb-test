<?php

namespace App\Controllers;

use App\Post;
use App\Requests\EditPostRequest;
use App\Requests\StorePostRequest;
use App\Requests\UpdatePostRequest;
use Core\Response;

class PostController
{
    /**
     * Build the HTML view to list all posts.
     *
     * @param Response $response
     * @param Post $post
     * @return Response
     */
    public function index(Response $response, Post $post): Response
    {
        return $response->view('posts/index', [
            'title' => 'All posts',
            'posts' => $post->all(),
        ]);
    }

    /**
     * Build the HTML view to create a new post.
     *
     * @param Response $response
     * @return Response
     */
    public function create(Response $response): Response
    {
        return $response->view('posts/create', ['title' => 'New post']);
    }

    /**
     * Sore a new post.
     *
     * @param Response $response
     * @return Response
     */
    public function store(StorePostRequest $request, Response $response): Response
    {
        if ($request->validationFails()) {
            return $response->unprocessableEntity('/create');
        }

        $request->post()->create($request->validatedInput());

        return $response->redirect('/');
    }

    /**
     * Build the HTML edit an existing post.
     *
     * @param EditPostRequest $request
     * @param Response $response
     * @return Response
     */
    public function edit(EditPostRequest $request, Response $response): Response
    {
        if ($request->validationFails()) {
            return $response->notFound();
        }

        return $response->view('posts/edit', [
            'title' => 'Edit the post',
            'post' => $request->post(),
        ]);
    }

    /**
     * Update an existing post.
     *
     * @param UpdatePostRequest $request
     * @param Response $response
     * @return Response
     */
    public function update(UpdatePostRequest $request, Response $response): Response
    {
        if ($request->validationFails()) {
            if (array_key_exists('post_id', $request->validatedInput())) {
                return $response->unprocessableEntity("/edit?post_id={$request->input('post_id')}");
            }
            return $response->unprocessableEntity('/');
        }

        $request->post()->update([
            'title' => $request->input('title'),
            'content' => $request->input('content'),
        ]);

        return $response->redirect('/');
    }
}
