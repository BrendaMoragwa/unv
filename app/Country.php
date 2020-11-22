<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $country_name
 * @property Project[] $projects
 */
class Country extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['country_name'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function projects()
    {
        return $this->hasMany('App\Project');
    }
}
