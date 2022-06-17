<?

namespace App\services;

use App\main\App;
use App\models\entities\OneToMany;

class XMLParser
{
	private $related = [];

	public function __construct()
	{
		$this->related = App::call()->vehicleRepository->getRelated();
	}

	public function parse(string $filepath)
	{
		$vehicleArr = [];

		set_error_handler(function ($err_severity,
									$err_msg,
									$err_file,
									$err_line,
									array $err_context) {
    		throw new \ErrorException( $err_msg, 0, $err_severity, $err_file, $err_line );
		}, E_WARNING);

		try {

			$xml = simplexml_load_file($filepath);

			foreach ($xml as $vehicle) {
				$vehicleArr[(int) $vehicle->id] = $this->parseOneItem($vehicle);
			}

		} catch(\Exception $e) {
			echo $e->getMessage();
			echo ' Файл ' . $filepath . ' отсуствует или имеет некорректный формат';
			exit;
		}

		restore_error_handler();

        return $vehicleArr;
	}

	private function parseOneItem($vehicle) : array
	{
		$result = [];

		// Обработка простых полей

		$result['id'] = (int) $vehicle->id;
		$result['uin'] = (int) $vehicle->uin;
		$result['year'] = (int) $vehicle->year;
		$result['description'] = (string) $vehicle->description;

		// Обработка связанных таблиц (строки с id)

		$dealerId = (int) $vehicle->dealer['id'];
		$result['dealer_id'] = $dealerId;
		$this->updateRelatedTable('dealer', $dealerId, $vehicle->dealer);

		$categoryId = (int) $vehicle->category['id'];
		$result['category_id'] = $categoryId;
		$this->updateRelatedTable('category', $categoryId, $vehicle->category);

		$generationId = (int) $vehicle->generation['id'];
		$result['generation_id'] = $generationId;
		$this->updateRelatedTable('generation', $generationId, $vehicle->generation);

		$modificationId = (int) $vehicle->modification['id'];
		$result['modification_id'] = $modificationId;
		$this->updateRelatedTable('modification', $modificationId,  $vehicle->modification);

		$brandId = (int) $vehicle->brand['id'];
		$result['brand_id'] = $brandId;
		$this->updateRelatedTable('brand', $brandId, $vehicle->brand);

		$modelId = (int) $vehicle->model['id'];
		$result['model_id'] = $modelId;
		$this->updateRelatedTable('model', $modelId, $vehicle->model);

		$bodyConfigurationId = (int) $vehicle->bodyConfiguration['id'];
		$result['body_configuration_id'] = $bodyConfigurationId;
		$this->updateRelatedTable('bodyConfiguration', $bodyConfigurationId, $vehicle->bodyConfiguration);

		// Обработка раздела equipment

		$equipments = $vehicle->equipment;

		if ($equipments) {

			$elColumns = [];

			foreach ($equipments->group as $group) {

				$groupId = (int) $group['id'];
				$groupName = (string) $group['name'];

				$this->updateRelatedTable('equipment', $groupId, $groupName);

				foreach ($group->element as $element) {

					$elementId = (int) $element['id'];
					$elementName = (string) $element;
					$params = [
						'id' => $elementId,
						'title' => $elementName,
						'equipment_id' => $groupId
					];

					$this->updateRelatedTable('element', $elementId, false, $params);

					$elColumns[] = [
						'element_id' => $elementId,
						'vehicle_id' => $result['id']
					];
				}
			}
		}

		$vehicleArray = [
			'columns' => $result,
			'element' => $elColumns
		];

		return $vehicleArray;
	}

	private function updateRelatedTable(string $name, int $id, $value, array $params = [])
	{
		if (!isset($this->related[$name][$id])) {

			$model = new OneToMany();

			if ($params) {
				$columns = $params;

			} else {
				$columns = [
					'id' => $id,
					'title' => $value,
				];
			}

			$model->columns = $columns;

			$repositoryName = $name . 'Repository';
			App::call()->$repositoryName->insert($model);
			$this->related[$name][$id] = $columns;
		}
	}
}

