<?php

namespace App\Controllers;

use App\Post;
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
}
