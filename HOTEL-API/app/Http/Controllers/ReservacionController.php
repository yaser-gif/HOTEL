<?php

namespace App\Http\Controllers;

use App\Models\Adelanto;
use App\Models\Cliente;
use App\Models\Movimiento;
use App\Models\Reservacion;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ReservacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Reservacion::where('estado',1)->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $reservacion = new Reservacion();
        $reservacion->start= $request->start;
        $reservacion->end= Carbon::parse($request->start)->addDay()->format('Y-m-d');
        $reservacion->habitacion_id= $request->habitacion_id;
        $reservacion->title= $request->title;
        $reservacion->precio= $request->precio;
        
        $reservacion->save();
        return $reservacion;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Reservacion  $reservacion
     * @return \Illuminate\Http\Response
     */
    public function show(Reservacion $reservacion)
    {
        return $reservacion;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Reservacion  $reservacion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Reservacion $reservacion)
    {
        $reservacion->start= $request->start;
        $reservacion->end= $request->end;
        $reservacion->save();
        return $reservacion;
    }
    public function reajuste(Request $request, Reservacion $reservacion)
    {
        
        $reservacion->start= $request->start;
        $reservacion->end= $request->end;
        $reservacion->title= $request->title;
        $reservacion->precio= $request->precio;
        $reservacion->active= $request->active;
        if(floatval($request->adelanto)>0){
            $adelanto = new Adelanto();
            $adelanto->monto = $request->adelanto;
            $adelanto->reservacion_id = $reservacion->id;
            $adelanto->save();
            $movimiento = new Movimiento();
            $movimiento->monto = $adelanto->monto;
            $movimiento->caja_id = $request->caja_id;
            $movimiento->detalle = "ADELANTO POR RESERVACION";
            $movimiento->save();

        }

        $reservacion->save();
        return $reservacion;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Reservacion  $reservacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Reservacion $reservacion)
    {
        $reservacion->estado = 0;
        $reservacion->save();
        return $reservacion;
    }
}
