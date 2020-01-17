
<?php $this->include('layout/header') ?>

<section>

    <h1>
        <?php $this->echo($this->title) ?>
    </h1>

    <form action="/store" method="post" id="post-form" autocomplete="off" novalidate>

        <div>

            <label for="post-title">
                Title
            </label>

            <input type="text" name="title" id="post-title" autofocus />

        </div>

        <div>

            <label for="post-content">
                Content
            </label>

            <textarea name="content" id="post-content" rows="20"></textarea>

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
