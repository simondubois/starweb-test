
<?php $this->include('layout/header') ?>

<section>

    <h1>
        <?php $this->echo($this->title) ?>
    </h1>

    <form action="/update" method="post" id="post-form" autocomplete="off" novalidate>

        <input type="hidden" name="post_id" value="<?php $this->echo($this->post->id) ?>">

        <div>

            <label for="post-title">
                Title
            </label>

            <input
                type="text"
                name="title"
                id="post-title"
                value="<?php $this->echo($this->post->title) ?>"
                autofocus
            />

        </div>

        <div>

            <label for="post-content">
                Content
            </label>

            <textarea name="content" id="post-content" rows="20"><?php $this->echo($this->post->content) ?></textarea>

        </div>

        <div>

            <input type="submit" />

            <a href="/">
                Back to all posts
            </a>

        </div>

    </form>

</section>

<script src="/js/form.js"></script>
<script src="/js/post.js"></script>

<?php $this->include('layout/footer') ?>
