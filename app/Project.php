<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $country_id
 * @property int $office_id
 * @property int $readiness_id
 * @property int $readiness_category_id
 * @property string $project_ref
 * @property float $grant_amount
 * @property int $duration
 * @property string $date_from_gcf
 * @property string $start_date
 * @property string $end_date
 * @property float $first_disbursement_amount
 * @property string $project_status
 * @property ReadinessCategory $readinessCategory
 * @property Country $country
 * @property Office $office
 * @property Readiness $readiness
 */
class Project extends Model
{
    /**
     * @var array
     */
    public $timestamps = false;
    protected $fillable = ['country_id', 'office_id', 'readiness_id', 'readiness_category_id', 'project_ref', 'grant_amount', 'duration', 'date_from_gcf', 'start_date', 'end_date', 'first_disbursement_amount', 'project_status'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function readinessCategory()
    {
        return $this->belongsTo('App\ReadinessCategory');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function country()
    {
        return $this->belongsTo('App\Country');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function office()
    {
        return $this->belongsTo('App\Office');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function readiness()
    {
        return $this->belongsTo('App\Readiness');
    }

    /**
     * Get the titles for the project.
     */
    public function titles()
    {
        return $this->hasMany('App\ProjectTitle');
    }
}
