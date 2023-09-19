<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Attribute extends Model
{
    protected $guarded = [''];

    public $type = [
        1 => [
            'name' => "Nhà xuất bản",
            'class' => 'label label-info' 
        ],
        2 => [
            'name' => 'Tác giả',
            'class' => 'label label-default' 
        ],
        3 => [
            'name' => 'Năm xuất bản',
            'class' => 'label label-danger' 
        ]
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->atb_type,"[N\A]");
    }

    public static function getListType()
	{
		$that = new self();
		return $that->type;
	}

    public function category()
    {
        return $this->belongsTo(Category::class,'atb_category_id');
    }
}
