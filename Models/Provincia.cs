using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TP9_Morrison.Models
{
    public class Provincia
    {
        private int _id;
        private string _provincia;
        public Provincia(int id, string provincia)
        {
            _id = id; _provincia = provincia;
        }
        public Provincia() { _provincia = ""; }
        public int id
        {
            get { return _id; }
            set { _id = value; }
        }
        public string provincia
        {
            get { return _provincia; }
            set { _provincia = value; }
        }
    }
}