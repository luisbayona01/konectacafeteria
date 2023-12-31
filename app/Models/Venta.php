<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Venta extends Model
{
    protected $fillable = [
        'producto_id',
        'cantidad',
        'precio_unitario',
        'total',
        'fecha_venta',
    ];

    public function producto()
    {
        return $this->belongsTo(Producto::class, 'producto_id');
    }

}