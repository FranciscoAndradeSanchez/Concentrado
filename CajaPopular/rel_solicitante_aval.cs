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
    
    public partial class rel_solicitante_aval
    {
        public rel_solicitante_aval()
        {
            this.contratoes = new HashSet<contrato>();
        }
    
        public int id_solicitante { get; set; }
        public int id_aval { get; set; }
        public decimal cantidad { get; set; }
        public Nullable<decimal> ingresos_mensuales { get; set; }
        public Nullable<decimal> ingresos_extra { get; set; }
        public Nullable<decimal> gastos_mensuales { get; set; }
        public Nullable<decimal> otras_deudas { get; set; }
    
        public virtual aval aval { get; set; }
        public virtual ICollection<contrato> contratoes { get; set; }
        public virtual solicitante solicitante { get; set; }
    }
=======

namespace CajaPopular
{

using System;
    using System.Collections.Generic;
    
public partial class rel_solicitante_aval
{

    public rel_solicitante_aval()
    {

        this.contratoes = new HashSet<contrato>();

    }


    public int id_solicitante { get; set; }

    public int id_aval { get; set; }

    public decimal cantidad { get; set; }

    public Nullable<decimal> ingresos_mensuales { get; set; }

    public Nullable<decimal> ingresos_extra { get; set; }

    public Nullable<decimal> gastos_mensuales { get; set; }

    public Nullable<decimal> otras_deudas { get; set; }



    public virtual aval aval { get; set; }

    public virtual ICollection<contrato> contratoes { get; set; }

    public virtual solicitante solicitante { get; set; }

}

>>>>>>> 6e1296d4a735628ed03e8ab9d57936a716dd9e7b
}