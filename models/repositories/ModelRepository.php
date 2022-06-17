<?

namespace App\models\repositories;

class ModelRepository extends Repository
{

    public function getTableName(): string
    {
        return 'model';
    }
}
