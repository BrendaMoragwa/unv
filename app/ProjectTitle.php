<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $project_id
 * @property string $title
 * @property Project $project
 */
class ProjectTitle extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['project_id', 'title'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function project()
    {
        return $this->belongsTo('App\Project');
    }
}
