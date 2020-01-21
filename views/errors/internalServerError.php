
<?php $this->include('layout/header') ?>

<section>

    <h1>
        <?php $this->echo($this->title) ?>
    </h1>

    <?php $this->include('errors/thrown') ?>

    <?php if ($this->thrown->getPrevious()) : ?>
        <?php $this->include('errors/thrown', ['thrown' => $this->thrown->getPrevious()]) ?>
    <?php endif ?>

</section>

<?php $this->include('layout/footer') ?>
