<?

namespace App\models\repositories;

use App\models\entities\Vehicle;
use App\main\App;

class VehicleRepository extends Repository
{
	private $result = ['add' => 0,'update' => 0];

    public function getTableName(): string
    {
        return 'vehicle';
    }

	public function refresh(array $vehicle) : string
	{

		$mVehicle = new Vehicle();
		$mVehicle->columns = $vehicle['columns'];
		$vId = $vehicle['columns']['id'];

		if ($vehicle['element']) {
			App::call()->vehicleElementRepository->deleteAllByVehicleId($vId);
			App::call()->vehicleElementRepository->multiInsert($vehicle['element']);
		}

		if ($this->check($vId)) {

			$this->update($mVehicle);
			$result = 'update';

		} else {

			$this->insert($mVehicle);
			$result = 'add';
		}

		if ($vehicle['element']) {
			App::call()->vehicleElementRepository->deleteAllByVehicleId($vId);
			App::call()->vehicleElementRepository->multiInsert($vehicle['element']);
		}

		return $result;
	}

	private function check(int $id) : bool
	{
		return (bool) $this->getOne($id);
	}

	public function getRelated() : array
    {
        return [
            'dealer' => App::call()->dealerRepository->getAll('id'),
            'category' => App::call()->categoryRepository->getAll('id'),
            'model' => App::call()->modelRepository->getAll('id'),
            'brand' => App::call()->brandRepository->getAll('id'),
            'modification' => App::call()->modificationRepository->getAll('id'),
            'generation' => App::call()->generationRepository->getAll('id'),
            'bodyConfiguration' => App::call()->bodyConfigurationRepository->getAll('id'),
            'equipment' => App::call()->equipmentRepository->getAll('id'),
            'element' => App::call()->elementRepository->getAll('id'),
        ];
    }
}
