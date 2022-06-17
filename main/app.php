<?

namespace App\main;

use App\traits\TSingleton;

class App
{
    const DELETE_ALL_PARAM = 'delete-all';
    const DELETE_BY_ID_PARAM = 'delete';

    use TSingleton;

    static public function call() : App
    {
        return static::getInstance();
    }

    private $config = [];
    private $components = [];

    public function run($config, $argv = [])
    {
        $this->config = $config;

        // Очистка таблицы Vehicle
        if (isset($argv[1]) && $argv[1] === self::DELETE_ALL_PARAM) {
            $this->deleteVehicles();
        }

        // Удаление авто по ID
        if (isset($argv[1]) && $argv[1] === self::DELETE_BY_ID_PARAM) {
            $this->deleteVehiceById($argv[2] ?? null);
        }

        // Режим парсинга
        $filepath = $argv[1] ?? $config['defaultXMLFile'];
        $this->parsing($filepath);
    }

    private function deleteVehicles()
    {
        self::call()->vehicleRepository->deleteAll();
        echo 'Данные об автомобилях очищены';
        exit;
    }

    private function deleteVehiceById($id)
    {
        if ($id) {
            self::call()->vehicleRepository->delete($id);
            echo 'Данные о позиции удалены';
        } else {
            echo 'Необходимо передать ID автомобиля';
        }

        exit;
    }

    private function parsing($filepath)
    {
        $time = time();
        $result = ['add' => 0,'update' => 0];

        $vehicleArray = self::call()->parser->parse($filepath);

        foreach ($vehicleArray as $vehicle) {
            $result[self::call()->vehicleRepository->refresh($vehicle)]++;
        }

        printf('Добавлено %s строк, обновлено %s строк, время %s сек.',
            $result['add'],
            $result['update'],
            time() - $time);
        exit;
    }

    public function __get(string $name)
    {
        if (array_key_exists($name, $this->components)) {
            return $this->components[$name];
        }

        if (array_key_exists($name, $this->config['components'])) {
            $class = $this->config['components'][$name]['class'];
            if (! class_exists($class)) {
                return null;
            }
            if (array_key_exists('config', $this->config['components'][$name])) {
                $config = $this->config['components'][$name]['config'];
                $component = new $class($config);
            } else {
                $component = new $class();
            }
            $this->components[$name] = $component;
            return $component;
        }
        return null;
    }
}
