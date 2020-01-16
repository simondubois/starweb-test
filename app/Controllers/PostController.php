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
}
