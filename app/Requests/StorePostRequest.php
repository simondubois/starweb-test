<?php

namespace App\Requests;

use App\Post;
use Core\Request;

class StorePostRequest extends Request
{
    /**
     * Post instance.
     *
     * @var Post
     */
    protected $post;

    /**
     * Make a new request.
     *
     * @param Post $post
     */
    public function __construct(Post $post)
    {
        $this->post = $post;
    }

    /**
     * Get the new post.
     *
     * @return Post
     */
    public function post(): Post
    {
        return $this->post;
    }

    /**
     * @inheritDoc
     */
    protected function rules(): array
    {
        return [
            'title' => function ($value): bool {
                return is_string($value) && strlen($value) > 0 && mb_strlen($value) <= 255;
            },
            'content' => function ($value): bool {
                return is_string($value) && strlen($value) > 0 && strlen($value) <= 65535;
            },
        ];
    }
}
