<<<<<<< HEAD
=======

>>>>>>> 6e1296d4a735628ed03e8ab9d57936a716dd9e7b
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

<<<<<<< HEAD
namespace CajaPopular
{
    using System;
    using System.Collections.Generic;
    
    public partial class persona
    {
        public persona()
        {
            this.avals = new HashSet<aval>();
            this.solicitantes = new HashSet<solicitante>();
        }
    
        public int uid { get; set; }
        public string nombre { get; set; }
        public string paterno { get; set; }
        public string materno { get; set; }
        public Nullable<System.DateTime> fecha_nacimiento { get; set; }
        public string domicilio { get; set; }
        public string colonia { get; set; }
        public string cruce1 { get; set; }
        public string cruce2 { get; set; }
        public string sector { get; set; }
        public string cp { get; set; }
        public string ciudad { get; set; }
        public string estado { get; set; }
        public string municipio { get; set; }
        public string edo_civil { get; set; }
        public string reg_matrimonial { get; set; }
        public string telefono_casa { get; set; }
        public string telefono_celular { get; set; }
        public string tipo_vivienda { get; set; }
        public Nullable<int> tiempo_residiendo { get; set; }
        public string conyuge { get; set; }
        public string ocupacion_conyuge { get; set; }
    
        public virtual ICollection<aval> avals { get; set; }
        public virtual ICollection<solicitante> solicitantes { get; set; }
    }
=======

namespace CajaPopular
{

using System;
    using System.Collections.Generic;
    
public partial class persona
{

    public persona()
    {

        this.avals = new HashSet<aval>();

        this.solicitantes = new HashSet<solicitante>();

    }


    public int uid { get; set; }

    public string nombre { get; set; }

    public string paterno { get; set; }

    public string materno { get; set; }

    public Nullable<System.DateTime> fecha_nacimiento { get; set; }

    public string domicilio { get; set; }

    public string colonia { get; set; }

    public string cruce1 { get; set; }

    public string cruce2 { get; set; }

    public string sector { get; set; }

    public string cp { get; set; }

    public string ciudad { get; set; }

    public string estado { get; set; }

    public string municipio { get; set; }

    public string edo_civil { get; set; }

    public string reg_matrimonial { get; set; }

    public string telefono_casa { get; set; }

    public string telefono_celular { get; set; }

    public string tipo_vivienda { get; set; }

    public Nullable<int> tiempo_residiendo { get; set; }

    public string conyuge { get; set; }

    public string ocupacion_conyuge { get; set; }



    public virtual ICollection<aval> avals { get; set; }

    public virtual ICollection<solicitante> solicitantes { get; set; }

}

>>>>>>> 6e1296d4a735628ed03e8ab9d57936a716dd9e7b
}
