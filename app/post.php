<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class post extends Model
{
    use Resizable;

    protected $table = 'posts';
}
