<?php

namespace App\Requests;

use App\Post;
use Core\Request;

class EditPostRequest extends Request
{
    /**
     * Post instance.
     *
     * @var Post
     */
    protected $post;

    /**
     * Make a new request
     *
     * @param Post $post
     */
    public function __construct(Post $post)
    {
        $this->post = $post;
    }

    /**
     * Get the post matching the post_id from the request.
     *
     * @return Post|null
     */
    public function post(): ?Post
    {
        return $this->post->find($this->input('post_id'));
    }

    /**
     * @inheritDoc
     */
    protected function rules(): array
    {
        return [
            'post_id' => function ($value): bool {
                return is_numeric($value) && $this->post() instanceof Post;
            },
        ];
    }
}
