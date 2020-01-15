<?php

namespace Core;

use PDO;

/**
 * Class responsible for connecting to and requesting database.
 */
class Database
{
    /**
     * Connection charset.
     *
     * @var string
     */
    protected $charset;

    /**
     * PDO instance.
     *
     * @var PDO|null
     */
    protected $connection;

    /**
     * Database name.
     *
     * @var string
     */
    protected $database;

    /**
     * Database host.
     *
     * @var string
     */
    protected $host;

    /**
     * Database password.
     *
     * @var string
     */
    protected $password;

    /**
     * Database user.
     *
     * @var string
     */
    protected $user;

    /**
     * Boot the database.
     *
     * @param Config $config
     */
    public function __construct(Config $config)
    {
        $this->host = $config->get('database.host');
        $this->database = $config->get('database.database');
        $this->user = $config->get('database.user');
        $this->password = $config->get('database.password');
        $this->charset = $config->get('database.charset');
    }

    /**
     * Connect to the database with values from config.
     *
     * @return void
     */
    protected function connect(): void
    {
        $this->connection = new PDO("mysql:host={$this->host};dbname={$this->database}", $this->user, $this->password);
        $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        if ($this->charset) {
             $this->connection->exec("SET NAMES {$this->charset}");
        }
    }

    /**
     * Connect the current connection to the database.
     *
     * @return PDO
     */
    protected function connection(): PDO
    {
        if (is_null($this->connection)) {
            $this->connect();
        }

        return $this->connection;
    }

    /**
     * Execute an INSERT statement with the provided data on the provided table.
     * Return the ID of the inserted record.
     *
     * @param string $table
     * @param array<mixed> $data
     * @return int
     */
    public function insert(string $table, array $data): int
    {
        $columns = '`' . implode('`, `', array_keys($data)) . '`';
        $placeholders = trim(str_repeat('?, ', count($data)), ', ');
        $values = array_values($data);

        $this->connection()
            ->prepare("INSERT INTO `$table` ($columns) VALUES ($placeholders)")
            ->execute($values);

        return intval($this->connection()->lastInsertId());
    }

    /**
     * Execute a SELECT statement for the provided fields with the provided conditions on the provided table.
     * The fields array must contain a string as value: the column name.
     * The conditions array must contain a 3-element array as value: the column name, the operator and the value.
     * Return the matching rows as an associative array.
     *
     * @param string $table
     * @param array<string> $fields
     * @param array<array<mixed>> $conditions
     * @return array<array<mixed>>
     */
    public function select(string $table, array $fields, array $conditions = []): array
    {
        $columns = '`' . implode('`, `', $fields) . '`';
        $conditionQuery = $this->whereQuery($conditions);
        $conditionValues = $this->whereValues($conditions);

        $statement = $this->connection()->prepare("SELECT $columns FROM `$table` $conditionQuery");
        $statement->execute($conditionValues);
        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Execute an UPDATE statement for the provided data with the provided conditions on the provided table.
     * The data array must be an associative array with column name as key and column value as value.
     * The conditions array must contain a 3-element array as value: the column name, the operator and the value.
     *
     * @param string $table
     * @param array<mixed> $data
     * @param array<array<mixed>> $conditions
     * @return void
     */
    public function update(string $table, array $data, array $conditions = []): void
    {
        $dataQuery = implode(', ', array_reduce(
            array_keys($data),
            function (array $query, string $column): array {
                $query[] = "`$column` = ?";
                return $query;
            },
            []
        ));
        $dataValues = array_values($data);

        $conditionQuery = $this->whereQuery($conditions);
        $conditionValues = $this->whereValues($conditions);

        $this->connection()
            ->prepare("UPDATE `$table` SET $dataQuery $conditionQuery")
            ->execute(array_merge($dataValues, $conditionValues));
    }

    /**
     * Transform a condition array into a SQL statement fragment with binding placeholders.
     * The conditions array must contain a 3-element array as value: the column name, the operator and the value.
     *
     * @param array<array<mixed>> $conditions
     * @return string
     */
    protected function whereQuery(array $conditions): string
    {
        if (empty($conditions)) {
            return '';
        }

        return "WHERE " . implode(' AND ', array_reduce(
            $conditions,
            function (array $query, array $condition): array {
                $query[] = "`{$condition[0]}` {$condition[1]} ?";
                return $query;
            },
            []
        ));
    }

    /**
     * Transform a condition array into an array of values for these conditions.
     * Used to be bound to a prepare statement.
     *
     * @param array<array<mixed>> $conditions
     * @return array<mixed>
     */
    protected function whereValues(array $conditions): array
    {
        return array_map('end', $conditions);
    }
}
