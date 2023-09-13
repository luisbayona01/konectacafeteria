<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Producto
 *
 * @property $id
 * @property $nombre
 * @property $referencia
 * @property $precio
 * @property $peso
 * @property $categoria
 * @property $stock
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Producto extends Model
{
     protected $table = 'productos';
    protected $primaryKey = 'id';
   
    static $rules = [
		'nombre' => 'required',
		'referencia' => 'required',
		'precio' => 'required',
		'peso' => 'required',
		'categoria' => 'required',
		'stock' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombre','referencia','precio','peso','categoria','stock'];



}
