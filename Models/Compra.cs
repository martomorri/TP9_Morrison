using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TP9_Morrison.Models;
public class Compra
{
    private int _id, _id_usuario, _id_producto;
    private string _nombre, _apellido, _num_tarjeta, _cod_seguridad;
    private DateTime _fecha_vencimiento;
    public Compra(int id, int id_usuario, int id_producto, string nombre, string apellido, string num_tarjeta, DateTime fecha_vencimiento, string cod_seguridad)
    {
        _id = id; _id_usuario = id_usuario; _id_producto = id_producto; _nombre = nombre; _apellido = apellido; _num_tarjeta = num_tarjeta; _fecha_vencimiento = fecha_vencimiento; _cod_seguridad = cod_seguridad;
    }
    public Compra()
    {
        _id = 0; _id_usuario = 0; _id_producto = 0; _nombre = ""; _apellido = ""; _num_tarjeta = ""; _fecha_vencimiento = new DateTime(1,1,1); _cod_seguridad = "";
    }
    public int id
    {
        get { return _id; }
    }
    public int id_usuario
    {
        get { return _id_usuario; }
        set { _id_usuario = value; }
    }
    public int id_producto
    {
        get { return _id_producto; }
        set { _id_producto = value; }
    }
    public string nombre
    {
        get { return _nombre; }
        set { _nombre = value; }
    }
    public string apellido
    {
        get { return _apellido; }
        set { _apellido = value; }
    }
    public string num_tarjeta
    {
        get { return _num_tarjeta; }
        set { _num_tarjeta = value; }
    }
    public DateTime fecha_vencimiento
    {
        get { return _fecha_vencimiento; }
        set { _fecha_vencimiento = value; }
    }
    public string cod_seguridad
    {
        get { return _cod_seguridad; }
        set { _cod_seguridad = value; }
    }
}