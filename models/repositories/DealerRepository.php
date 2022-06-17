<?

namespace App\models\repositories;

class DealerRepository extends Repository
{

    public function getTableName(): string
    {
        return 'dealer';
    }
}
