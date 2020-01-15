<?php

namespace Core;

/**
 * Class responsible for providing facilities to build database bound entity objects.
 */
abstract class Model
{
    /**
     * Values from database.
     *
     * @var array<mixed>
     */
    protected $data;

    /**
     * Database instance.
     *
     * @var Database
     */
    protected $database;

    /**
     * Make a new model.
     *
     * @param Database $database
     * @param array<mixed> $data
     */
    final public function __construct(Database $database, array $data = [])
    {
        $this->database = $database;
        $this->data = $data;
    }

    /**
     * Return the data value matching the provided name.
     *
     * @param string $name
     * @return mixed
     */
    public function __get(string $name)
    {
        return $this->data[$name];
    }

    /**
     * Return all models from the related table.
     *
     * @return array<static>
     */
    public function all(): array
    {
        return array_map(
            [$this, 'make'],
            $this->database->select($this->table(), ['*'])
        );
    }

    /**
     * Create a new record in database and return the related model.
     *
     * @param array<mixed> $data
     * @return static
     */
    public function create(array $data): Model
    {
        return $this->find(
            $this->database->insert($this->table(), $data)
        );
    }

    /**
     * Get the model matching the ID, or null if none exists.
     *
     * @param int $identifier
     * @return static|null
     */
    public function find(int $identifier): ?Model
    {
        $rows = $this->database->select($this->table(), ['*'], [['id', '=', $identifier]]);

        if (empty($rows)) {
            return null;
        }

        return $this->make(reset($rows));
    }

    /**
     * Return a new model instance with the provided data.
     *
     * @param array<mixed> $data
     * @return static
     */
    protected function make(array $data): Model
    {
        return new static($this->database, $data);
    }

    /**
     * Get the name for the database table.
     *
     * @return string
     */
    abstract public function table(): string;

    /**
     * Update the database record with the provided data, and return an updated model instance.
     *
     * @param array<mixed> $data
     * @return static
     */
    public function update(array $data): Model
    {
        $this->database->update($this->table(), $data, [['id', '=', $this->id]]);

        return $this->find($this->id);
    }
}
