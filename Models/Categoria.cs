using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TP9_Morrison.Models
{
    public class Categoria
    {
        private int _id;
        private string _categoria;
        public Categoria(int id, string categoria)
        {
            _id = id; _categoria = categoria;
        }
        public int id
        {
            get { return _id; }
        }
        public string categoria
        {
            get { return _categoria; }
            set { _categoria = value; }
        }
    }
}