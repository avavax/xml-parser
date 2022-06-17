<?

namespace App\models\repositories;

class CategoryRepository extends Repository
{
    public function getTableName(): string
    {
        return 'category';
    }
}
