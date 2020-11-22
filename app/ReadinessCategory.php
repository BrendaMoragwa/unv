<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $category
 * @property Project[] $projects
 */
class ReadinessCategory extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['category'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function projects()
    {
        return $this->hasMany('App\Project');
    }
}
