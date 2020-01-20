
<?php $this->include('layout/header') ?>

<section>

    <h1>
        <?php $this->echo($this->title) ?>
        <small>
            <a href="/create">
                new post
            </a>
        </small>
    </h1>

    <?php foreach ($this->posts as $post) : ?>
        <article>

            <h2>
                <?php $this->echo($post->title) ?>
                <small>
                    <a href="/edit?post_id=<?php $this->echo($post->id) ?>">
                        edit
                    </a>
                </small>
            </h2>

            <p>
                <?php $this->echoBr($post->content) ?>
            </p>

        </article>
    <?php endforeach ?>

</section>

<?php $this->include('layout/footer') ?>
