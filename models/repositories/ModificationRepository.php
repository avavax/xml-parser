<?

namespace App\models\repositories;

class ModificationRepository extends Repository
{
    public function getTableName(): string
    {
        return 'modification';
    }
}
