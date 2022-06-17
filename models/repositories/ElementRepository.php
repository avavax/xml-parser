<?

namespace App\models\repositories;

class ElementRepository extends Repository
{
    public function getTableName(): string
    {
        return 'element';
    }
}
