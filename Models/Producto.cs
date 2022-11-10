using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TP9_Morrison.Models;
public class Producto
{
    private int _id, _id_categoria, _stock_actual, _id_marca;
    private string _nombre, _descripcion, _articulo, _imagen, _color, _talle;
    private double _precio;
    public Producto(int id, string nombre, string descripcion, string articulo, int id_categoria, string imagen, double precio, string color, string talle, int stock_actual, int id_marca)
    {
        _id = id; _nombre = nombre; _descripcion = descripcion; _articulo = articulo; _id_categoria = id_categoria; _imagen = imagen; _precio = precio; _color = color; _talle = talle; _stock_actual = stock_actual; _id_marca = id_marca;
    }
    public Producto() 
    {
        _id = 0; _nombre = ""; _descripcion = ""; _articulo = ""; _id_categoria = 0; _imagen = ""; _precio = 0; _color = ""; _talle = ""; _stock_actual = 0; _id_marca = 0;
    }
    public int id
    {
        get { return _id; }
        set { _id = value;}
    }
    public string nombre
    {
        get { return _nombre; }
        set { _nombre = value; }
    }
    public string descripcion
    {
        get { return _descripcion; }
        set { _descripcion = value; }
    }
    public string articulo
    {
        get { return _articulo; }
        set { _articulo = value; }
    }
    public int id_categoria
    {
        get { return _id_categoria; }
        set { _id_categoria = value; }
    }
    public string imagen
    {
        get { return _imagen; }
        set { _imagen = value; }
    }
    public double precio
    {
        get { return _precio; }
        set { _precio = value; }
    }
    public string color
    {
        get { return _color; }
        set { _color = value; }
    }
    public string talle
    {
        get { return _talle; }
        set { _talle = value; }
    }
    public int stock_actual
    {
        get { return _stock_actual; }
        set { _stock_actual = value; }
    }
    public int id_marca
    {
        get { return _id_marca; }
        set { _id_marca = value; }
    }
}