<?php

namespace Database\Seeders;

use App\Models\Venta;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class VentasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       $ventas = [
            [
                'producto_id' => 1, // ID del producto vendido 
                'cantidad' => 5,
                'precio_unitario' => 1500, // Precio del producto vendido
                'total' => 7500, // Total de la venta
                
            ],
            [
                'producto_id' => 2, // ID del producto vendido 
                'cantidad' => 3,
                'precio_unitario' => 700, // Precio del producto vendido
                'total' => 2100, // Total de la venta
               
            ],
           
        ];

        // Inserta las ventas en la tabla de ventas
        Venta::insert($ventas);
    }
}
