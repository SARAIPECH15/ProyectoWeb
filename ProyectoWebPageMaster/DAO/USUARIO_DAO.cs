using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using ProyectoWebPageMaster.DAO;
using ProyectoWebPageMaster.BO;

namespace ProyectoWebPageMaster.DAO
{
	public class USUARIO_DAO
	{



		CONEXION_DAO objConectar = new CONEXION_DAO();


		public DataSet buscar_usuarios()
		{

			DataSet datos = objConectar.EjecutarSentencia("select ID_TIPOUSUARIO AS CLAVE, NOMBRE  from TIPOUSUARIO ");
			return datos;

		}



		public int agregarusuario(USUARIO_BO objusuario)
		{
			//inserta y devuelve el ultimo el id insertado

			//LLAMA AL CIMANDO PORQUE ES UN INSERT

			int id = objConectar.EjecutarComando("INSERT INTO TIPOUSUARIO (NOMBRE) output INSERTED.ID_TIPOUSUARIO values('" + objusuario.Nombre + "')");
			return id;

		}
		public int modificarusuario(USUARIO_BO objusuario)
		{
			int id = objConectar.EjecutarComando(string.Format("update TIPOUSUARIO set NOMBRE='{0}' where ID_TIPOUSUARIO={1}" , objusuario.Nombre, objusuario.Id));
			return 1;
		}

		public int eliminarusuario(USUARIO_BO objusuario)
		{
			int id = objConectar.EjecutarComando(string.Format("delete from TIPOUSUARIO where ID_TIPOUSUARIO={0}", objusuario.Id));
			return 1;
		}


		


		//de aqui nos fuimos a bienvenido GUI para ver lo de foto




























	}
}