<?

namespace App\models\repositories;

class GenerationRepository extends Repository
{
    public function getTableName(): string
    {
        return 'generation';
    }
}
