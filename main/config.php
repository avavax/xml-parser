<?

return [
	'defaultXMLFile' => './data/data.xml',
    'components' => [
        'db' => [
            'class' => \App\services\Db::class,
            'config' => [
                'driver' => 'mysql',
                'db' => 'autobase',
                'host' => 'localhost',
                'user' => 'root',
                'password' => '',
                'charset' => 'utf8'
            ]
        ],
        'parser' => ['class' => \App\services\XMLParser::class],
        'vehicleRepository' => ['class' => \App\models\repositories\VehicleRepository::class],
        'dealerRepository' => ['class' => \App\models\repositories\DealerRepository::class],
        'categoryRepository' => ['class' => \App\models\repositories\CategoryRepository::class],
        'modificationRepository' => ['class' => \App\models\repositories\ModificationRepository::class],
        'generationRepository' => ['class' => \App\models\repositories\GenerationRepository::class],
        'brandRepository' => ['class' => \App\models\repositories\BrandRepository::class],
        'modelRepository' => ['class' => \App\models\repositories\ModelRepository::class],
        'bodyConfigurationRepository' => ['class' => \App\models\repositories\BodyConfigurationRepository::class],
        'equipmentRepository' => ['class' => \App\models\repositories\EquipmentRepository::class],
        'elementRepository' => ['class' => \App\models\repositories\ElementRepository::class],
        'vehicleElementRepository' => ['class' => \App\models\repositories\VehicleElementRepository::class],
    ],
];
