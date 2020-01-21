<article>

    <h2>
        <?php $this->echo(get_class($this->thrown)) ?>
    </h2>

    <ul>

        <li>
            <b>Message</b>: <?php $this->echo($this->thrown->getMessage()) ?>
        </li>

        <li>
            <b>Code</b>: <?php $this->echo($this->thrown->getCode()) ?>
        </li>

        <li>
            <b>File</b>: <?php $this->echo($this->thrown->getFile()) ?>
        </li>

        <li>
            <b>Line</b>: <?php $this->echo($this->thrown->getLine()) ?>
        </li>

        <li>
            <b>Trace</b>:<br>
            <?php $this->echoBr($this->thrown->getTraceAsString()) ?>
        </li>

    </ul>

</article>
