<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $readiness_type
 * @property Project[] $projects
 */
class Readiness extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'readiness';

    /**
     * @var array
     */
    protected $fillable = ['readiness_type'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function projects()
    {
        return $this->hasMany('App\Project');
    }
}
