<?php

namespace App;

use Core\Model;

class Post extends Model
{
    /**
     * @inheritDoc
     */
    public function table(): string
    {
        return 'posts';
    }
}
