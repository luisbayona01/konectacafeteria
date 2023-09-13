<?php

namespace Database\Seeders;
use App\Models\Producto;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         $productos = [
            [
                'nombre' => 'Café Espresso',
                'referencia' => 'ESP001',
                'precio' => 1500,
                'peso' => 250,
                'categoria' => 'Bebidas',
                'stock' => 100,
                
            ],
            [
                'nombre' => 'Croissant',
                'referencia' => 'CRO001',
                'precio' => 700,
                'peso' => 80,
                'categoria' => 'Repostería',
                'stock' => 50,
               
            ],
           [
                'nombre' => 'tinto',
                'referencia' => 'TRO001',
                'precio' => 800,
                'peso' => 80,
                'categoria' => 'Repostería',
                'stock' => 50,
               
            ],
        ];


        // Inserta los productos en la tabla de productos
        Producto::insert($productos);
    }
}
