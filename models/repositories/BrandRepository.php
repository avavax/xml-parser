<?

namespace App\models\repositories;

class BrandRepository extends Repository
{
    public function getTableName(): string
    {
        return 'brand';
    }
}
