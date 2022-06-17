<?

namespace App\models\repositories;

class EquipmentRepository extends Repository
{
    public function getTableName(): string
    {
        return 'equipment';
    }
}
