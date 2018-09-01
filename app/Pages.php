<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Pages extends Model
{
    use Resizable;

    protected $table = 'pages';
}
