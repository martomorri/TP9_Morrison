using System;

namespace TP9_Morrison.Models;
public class Usuario
{
    private int _id, _id_provincia;
    private string _nombre, _apellido, _email, _password, _direccion, _num_telefono;
    private DateTime _fecha_nacimiento;
    private bool _administrador;
    public Usuario(int id, string password, string nombre, string apellido, DateTime fecha_nacimiento, string direccion, int id_provincia, string num_telefono, string email, bool administrador)
    {
        _id = id; _nombre = nombre; _apellido = apellido; _email = email; _password = password; _fecha_nacimiento = fecha_nacimiento; _direccion = direccion; _id_provincia = id_provincia; _num_telefono = num_telefono; _administrador = administrador;
    }
    public Usuario() { }
    public int id
    {
        get { return _id; }
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
    public string email
    {
        get { return _email; }
        set { _email = value; }
    }
    public string password
    {
        get { return _password; }
        set { _password = value; }
    }
    public DateTime fecha_nacimiento
    {
        get { return _fecha_nacimiento; }
        set { _fecha_nacimiento = value; }
    }
    public string direccion
    {
        get { return _direccion; }
        set { _direccion = value; }
    }
    public int id_provincia
    {
        get { return _id_provincia; }
        set { _id_provincia = value; }
    }
    public string num_telefono
    {
        get { return _num_telefono; }
        set { _num_telefono = value; }
    }
    public bool administrador
    {
        get { return _administrador; }
    }
}