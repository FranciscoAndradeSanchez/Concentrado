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
    
    public partial class contrato
    {
        public string uid { get; set; }
        public int id_solicitud { get; set; }
        public int id_solicitante { get; set; }
        public int id_aval { get; set; }
    
        public virtual rel_solicitante_aval rel_solicitante_aval { get; set; }
        public virtual aval aval { get; set; }
        public virtual solicitante solicitante { get; set; }
        public virtual usuario usuario { get; set; }
        public virtual cotizacion cotizacion { get; set; }
        public virtual persona persona { get; set; }
    
    }
=======

namespace CajaPopular
{

using System;
    using System.Collections.Generic;
    
public partial class contrato
{

    public string uid { get; set; }

    public int id_solicitud { get; set; }

    public int id_solicitante { get; set; }

    public int id_aval { get; set; }



    public virtual rel_solicitante_aval rel_solicitante_aval { get; set; }

}

>>>>>>> 6e1296d4a735628ed03e8ab9d57936a716dd9e7b
}
