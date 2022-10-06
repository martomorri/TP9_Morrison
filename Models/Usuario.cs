using System;

namespace TP9_Morrison.Models;
public class Usuario
{
    private int _id, _id_pais;
    private string _username, _nombre, _apellido, _dni, _foto_perfil, _num_telefono, _email, _genero, _pais;
    private DateTime _fecha_nacimiento;
    private bool _administrador;
    public Usuario(int id, string username, string nombre, string apellido, string dni, DateTime fecha_nacimiento, string foto_perfil, string num_telefono, string email, string genero, int id_pais, string pais, bool administrador)
    {
        _id = id; _username = username; _nombre = nombre; _apellido = apellido; _dni = dni; _fecha_nacimiento = fecha_nacimiento; _foto_perfil = foto_perfil; _num_telefono = num_telefono; _email = email; _genero = genero; _id_pais = id_pais; _pais = pais; _administrador = administrador;
    }
    public Usuario()
    {
        _id = 0; _username = ""; _nombre = ""; _apellido = ""; _dni = ""; _fecha_nacimiento = new DateTime(1,1,1); _foto_perfil = ""; _num_telefono = ""; _email = ""; _genero = ""; _id_pais = 0; _pais = ""; _administrador = false;
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
    public string dni
    {
        get { return _dni; }
        set { _dni = value; }
    }
    public DateTime fecha_nacimiento
    {
        get { return _fecha_nacimiento; }
        set { _fecha_nacimiento = value; }
    }
    public string foto_perfil
    {
        get { return _foto_perfil; }
        set { _foto_perfil = value; }
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
    public string genero
    {
        get { return _genero; }
        set { _genero = value; }
    }
    public int id_pais
    {
        get { return _id_pais; }
        set { _id_pais = value; }
    }
    public string pais
    {
        get { return _pais; }
        set { _pais = value; }
    }
    public bool administrador
    {
        get { return _administrador; }
    }
}