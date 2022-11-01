using System;

namespace TP9_Morrison.Models;
public class Usuario
{
    private int _id;
    private string _username, _password, _nombre, _apellido, _num_telefono, _email;
    private DateTime _fecha_nacimiento;
    private bool _administrador;
    public Usuario(int id, string username, string password, string nombre, string apellido, DateTime fecha_nacimiento, string num_telefono, string email, bool administrador)
    {
        _id = id; _username = username; _password = password; _nombre = nombre; _apellido = apellido; _fecha_nacimiento = fecha_nacimiento; _num_telefono = num_telefono; _email = email; _administrador = administrador;
    }
    public Usuario()
    {
        _id = 0; _username = ""; _password = ""; _nombre = ""; _apellido = ""; _fecha_nacimiento = new DateTime(1,1,1); _num_telefono = ""; _email = ""; _administrador = false;
    }
    public int id
    {
        get { return _id; }
    }
    public string username
    {
        get { return _username; }
        set { _username = value; }
    }
    public string password
    {
        get { return _password; }
        set { _password = value; }
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
    public DateTime fecha_nacimiento
    {
        get { return _fecha_nacimiento; }
        set { _fecha_nacimiento = value; }
    }
    public string num_telefono
    {
        get { return _num_telefono; }
        set { _num_telefono = value; }
    }
    public string email
    {
        get { return _email; }
        set { _email = value; }
    }
    public bool administrador
    {
        get { return _administrador; }
    }
}