<?

namespace App\models\repositories;

class BodyConfigurationRepository extends Repository
{
    public function getTableName(): string
    {
        return 'body_configuration';
    }
}
