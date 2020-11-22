<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $office_name
 * @property Project[] $projects
 */
class Office extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['office_name'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function projects()
    {
        return $this->hasMany('App\Project');
    }
}
