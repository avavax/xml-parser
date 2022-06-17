<?

namespace App\models\repositories;

class VehicleElementRepository extends Repository
{
    public function getTableName(): string
    {
        return 'vehicle_element';
    }

    public function deleteAllByVehicleId(int $vehicle_id)
    {
        $this->deleteByParam('vehicle_id', $vehicle_id);
    }
}
