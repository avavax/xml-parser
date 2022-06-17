<?php
namespace App\models\repositories;

use App\main\App;
use App\models\entities\Entity;
use App\services\Db;


abstract class Repository implements IRepository
{
    /**
     * @var Db
     */
    private $db;

    /**
     * Good constructor.
     */
    public function __construct()
    {
        $this->db = App::call()->db;
    }

    /**
     * Получение конкретной записи
     *
     * @param $id
     * @return
     */
    public function getOne($id)
    {
        $table = $this->getTableName();
        $sql = "SELECT * FROM {$table} WHERE id = :id";
        return App::call()->db->getArray($sql, [':id' => $id]);
    }

    /**
     * Получение всех записей
     *
     * @return array
     */
    public function getAll($sortIndex = null)
    {
        $table = $this->getTableName();
        $sql = "SELECT * FROM {$table}";
        $result = App::call()->db->getArrays($sql);

        if ($sortIndex) {
            $arr = [];
            foreach ($result as $item) {
                $arr[$item[$sortIndex]] = $item;
            }
            $result = $arr;
        }

        return $result;
    }

    public function delete(int $id)
    {
        $table = $this->getTableName();
        $sql = "DELETE FROM {$table} WHERE id = :id";
        return $this->db->execute($sql, [':id' => $id]);
    }

    public function deleteAll()
    {
        $table = $this->getTableName();
        $sql = "DELETE FROM {$table}";
        return $this->db->execute($sql);
    }

    public function insert(Entity $entity)
    {
        //INSERT INTO users(login, password) VALUES (:login, :password)
        //[':login' => $login, ':password' => $password]

        $columns = [];
        $params = [];

        foreach ($entity->columns as $key => $value) {
            if (empty($value)) {
                continue;
            }
            $columns[] = $key;
            $params[":{$key}"] = $value;
        }

        $columns = implode(', ', $columns);
        $placeholders = implode(', ', array_keys($params));

        $table = $this->getTableName();
        $sql = "INSERT INTO {$table}
                ({$columns}) 
                VALUES ({$placeholders})";

        $this->db->execute($sql, $params);
        $entity->id = (integer)$this->db->getLastId();
    }

    public function update(Entity $entity)
    {
        //UPDATE users SET login = :login, password = :password WHERE id = :id
        //[':login' => $login, ':password' => $password, ':id' => $id]

        $placeholders = [];
        $params = [];

        foreach ($entity->columns as $key => $value) {
            $params[":{$key}"] = $value;
            if ($key == 'id') {
                continue;
            }
            $placeholders[] = "{$key} = :{$key}";
        }

        $placeholders = implode(', ', $placeholders);

        $table = $this->getTableName();
        $sql = "UPDATE {$table} SET {$placeholders} WHERE id = :id";
        $this->db->execute($sql, $params);

    }

    public function save(Entity $entity) //по id выбираться insert или update
    {

        $id = $entity->id;
        if (empty($id)) {
            $this->insert($entity);
        } else {
            $this->update($entity);
        }
    }

    protected function deleteByParam($paramName, $paramValue)
    {
        $table = $this->getTableName();
        $sql = "DELETE FROM {$table} WHERE {$paramName} = :{$paramName}";
        return $this->db->execute($sql, [":{$paramName}" => $paramValue]);
    }

    public function multiInsert(array $data)
    {
        /* Data format
            [
                ["id"=>1,"title"=>"a","message"=>"am"],
                ["id"=>2,"title"=>"b","message"=>"bm"],
                ["id"=>3,"title"=>"c","message"=>"cm"],
            ]
        */

        $table = $this->getTableName();

        $columns = [];

        foreach ($data[0] as $key => $value) {
            $columns[] = $key;
        }

        $params = [];
        $i = 0;

        foreach($data as $d) {
             $keys = [];
            foreach($columns as $fn) {
                $key = ':i'. $i . $fn;
                $keys[] = $key;
                $params[$key] = $d[$fn];
            }
            $stm_texts[] = '(' . implode(',',$keys) . ')';
            $i++;
        }

        $columns = implode(', ', $columns);

        $placeholders = implode(',',$stm_texts);

        $sql = "INSERT INTO {$table}
                ({$columns})
                VALUES {$placeholders}";

        $this->db->execute($sql, $params);
    }
}
