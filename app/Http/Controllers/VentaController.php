<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use App\Models\Venta;
use Illuminate\Http\Request;

class VentaController extends Controller
{

public  function index(){
 $producto=Producto::all(['id','nombre']);
 return view('ventas.create', compact('producto'));


}
 public function realizarVenta(Request $request)
{
    // Validar los datos de entrada (por ejemplo, el ID del producto y la cantidad)
    $request->validate([
        'producto_id' => 'required|exists:productos,id',
        'cantidad' => 'required|integer|min:1',
    ]);

    // Obtener el producto
    $producto = Producto::findOrFail($request->input('producto_id'));
//dd($producto->precio);
    // Verificar si hay suficiente stock
    if ($producto->stock >= $request->input('cantidad')) {
        // Realizar la venta
     
        $venta = new Venta();
        $venta->producto_id = $producto->id;
        $venta->precio_unitario=$producto->precio; 
        $venta->cantidad = $request->input('cantidad');
        $venta->total=$producto->precio * $request->input('cantidad');
        $venta->save();

        // Actualizar el stock del producto
        $producto->stock -= $venta->cantidad;
        $producto->save();

        // Redireccionar o mostrar un mensaje de éxito
        return redirect()->route('productos.index')->with('success', 'Venta realizada con éxito.');
    } else {
        // Mostrar un mensaje de error si no hay suficiente stock
        return redirect()->back()->with('error', 'No hay suficiente stock para realizar la venta.');
    }
}
}
