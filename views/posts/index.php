
<?php $this->include('layout/header') ?>

<section>

    <h1>
        <?php $this->echo($this->title) ?>
    </h1>

    <?php foreach ($this->posts as $post) : ?>
        <article>

            <h2>
                <?php $this->echo($post->title) ?>
            </h2>

            <p>
                <?php $this->echoBr($post->content) ?>
            </p>

        </article>
    <?php endforeach ?>

</section>

<?php $this->include('layout/footer') ?>
