<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\administradores_servicios_log;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class PythonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $process = exec('python C:\Users\juoha\Desktop\ESCOM\TT\Proto_SDN_TT\web\Back-end\TT-Back\public\Hello.py');
        return $process;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function router(Request $request)
    {
        // $process = exec('python Hello.py');
        // return $process;
        if (exec('python Hello.py')) {
            $adminserviciolog = new administradores_servicios_log();
            $adminserviciolog->Id_Status_Log = 3;
            $adminserviciolog->Id_Administradores = $request->Id_Administradores;
            $adminserviciolog->Id_Cat_Servicios = 2;
            $adminserviciolog->Ip_Dispositivo_Orig = \Request::ip();
            $adminserviciolog->MAC_Dispositivo_Orig = 'Inalcanzable';
            $adminserviciolog->IP_Dispositivos_Ant = $request->IP_Dispositivos_Ant;
            $adminserviciolog->IP_Dispositivos_Desp = $request->IP_Dispositivos_Desp;
            $adminserviciolog->Dir_MAC_Disp_Fin = 'Inalcanzable';
            $adminserviciolog->Fecha_Init_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->Fecha_Fin_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->save();
            return response(["message"=>"Servicio realizado con éxito",'code'=>201]);
        }else {
            $adminserviciolog = new administradores_servicios_log();
            $adminserviciolog->Id_Status_Log = 2;
            $adminserviciolog->Id_Administradores = $request->Id_Administradores;
            $adminserviciolog->Id_Cat_Servicios = 2;
            $adminserviciolog->Ip_Dispositivo_Orig = \Request::ip();
            $adminserviciolog->MAC_Dispositivo_Orig = 'Inalcanzable';
            $adminserviciolog->IP_Dispositivos_Ant = $request->IP_Dispositivos_Ant;
            $adminserviciolog->IP_Dispositivos_Desp = $request->IP_Dispositivos_Desp;
            $adminserviciolog->Dir_MAC_Disp_Fin = 'Inalcanzable';
            $adminserviciolog->Fecha_Init_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->Fecha_Fin_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->save();
            return response(["message"=>"Ha ocurrido un error y no se ha realizado el servicio",'code'=>400]);
        }
    }
    public function switch(Request $request){
        if (exec('python Hello.py')) {
            $adminserviciolog = new administradores_servicios_log();
            $adminserviciolog->Id_Status_Log = 3;
            $adminserviciolog->Id_Administradores = $request->Id_Administradores;
            $adminserviciolog->Id_Cat_Servicios = 3;
            $adminserviciolog->Ip_Dispositivo_Orig = \Request::ip();
            $adminserviciolog->MAC_Dispositivo_Orig = 'Inalcanzable';
            $adminserviciolog->IP_Dispositivos_Ant = $request->IP_Dispositivos_Ant;
            $adminserviciolog->IP_Dispositivos_Desp = $request->IP_Dispositivos_Desp;
            $adminserviciolog->Dir_MAC_Disp_Fin = 'Inalcanzable';
            $adminserviciolog->Fecha_Init_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->Fecha_Fin_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->save();
            return response(["message"=>"Servicio realizado con éxito",'code'=>201]);
        }else {
            $adminserviciolog = new administradores_servicios_log();
            $adminserviciolog->Id_Status_Log = 2;
            $adminserviciolog->Id_Administradores = $request->Id_Administradores;
            $adminserviciolog->Id_Cat_Servicios = 3;
            $adminserviciolog->Ip_Dispositivo_Orig = \Request::ip();
            $adminserviciolog->MAC_Dispositivo_Orig = 'Inalcanzable';
            $adminserviciolog->IP_Dispositivos_Ant = $request->IP_Dispositivos_Ant;
            $adminserviciolog->IP_Dispositivos_Desp = $request->IP_Dispositivos_Desp;
            $adminserviciolog->Dir_MAC_Disp_Fin = 'Inalcanzable';
            $adminserviciolog->Fecha_Init_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->Fecha_Fin_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->save();
            return response(["message"=>"Ha ocurrido un error y no se ha realizado el servicio",'code'=>400]);
        } 
    }
    public function servidor(Request $request){
        if (exec('python Hello.py')) {
            $adminserviciolog = new administradores_servicios_log();
            $adminserviciolog->Id_Status_Log = 3;
            $adminserviciolog->Id_Administradores = $request->Id_Administradores;
            $adminserviciolog->Id_Cat_Servicios = 4;
            $adminserviciolog->Ip_Dispositivo_Orig = \Request::ip();
            $adminserviciolog->MAC_Dispositivo_Orig = 'Inalcanzable';
            $adminserviciolog->IP_Dispositivos_Ant = $request->IP_Dispositivos_Ant;
            $adminserviciolog->IP_Dispositivos_Desp = $request->IP_Dispositivos_Desp;
            $adminserviciolog->Dir_MAC_Disp_Fin = 'Inalcanzable';
            $adminserviciolog->Fecha_Init_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->Fecha_Fin_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->save();
            return response(["message"=>"Servicio realizado con éxito",'code'=>201]);
        }else {
            $adminserviciolog = new administradores_servicios_log();
            $adminserviciolog->Id_Status_Log = 2;
            $adminserviciolog->Id_Administradores = $request->Id_Administradores;
            $adminserviciolog->Id_Cat_Servicios = 4;
            $adminserviciolog->Ip_Dispositivo_Orig = \Request::ip();
            $adminserviciolog->MAC_Dispositivo_Orig = 'Inalcanzable';
            $adminserviciolog->IP_Dispositivos_Ant = $request->IP_Dispositivos_Ant;
            $adminserviciolog->IP_Dispositivos_Desp = $request->IP_Dispositivos_Desp;
            $adminserviciolog->Dir_MAC_Disp_Fin = 'Inalcanzable';
            $adminserviciolog->Fecha_Init_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->Fecha_Fin_Serv = date("Y-m-d H:i:s");
            $adminserviciolog->save();
            return response(["message"=>"Ha ocurrido un error y no se ha realizado el servicio",'code'=>400]);
        }
    }
}
