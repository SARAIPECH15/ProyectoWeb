using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



using ProyectoWebPageMaster.BO;
using ProyectoWebPageMaster.DAO;



namespace ProyectoWebPageMaster.DAO
{
	public class Tipousuario_DAO
	{


		Conexion objConectar = new Conexion();


		public DataSet buscar_TIPOusuarios()
		{
			DataSet datos = objConectar.EjecutarSentencia("select * from TIPOUSUARIO");
			return datos;

		}

		public int agregarTIPOUS(Tipousuario_BO objusuario)
		{
			//inserta y devuelve el ultimo el id insertado
			int id = objConectar.EjecutarComando("INSERT INTO TIPOUSUARIO (NOMBRE) output INSERTED.ID_TIPOUSUARIO values('" +objusuario.Nombretipou+ "')");
			return id;

		}


		public DataSet Consultar(string strSQL)
		{
			objConectar.establecerConexion();
			objConectar.abrirConexion();
			SqlCommand cmd = new SqlCommand(strSQL, objConectar.establecerConexion());
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			DataSet ds = new DataSet();
			da.Fill(ds);
			objConectar.cerrarConexion();
			return ds;

		}


		public int modificatipousuario(Tipousuario_BO objusuario)
		{
			int id = objConectar.EjecutarComando(string.Format("update TIPOUSUARIO set NOMBRE='{0}' where ID_TIPOUSUARIO={1}", objusuario.Nombretipou, objusuario.Id));
			return 1;
		}

		public int eliminarusuario(Tipousuario_BO objusuario)
		{
			int id = objConectar.EjecutarComando(string.Format("delete from TIPOUSUARIO where ID_TIPOUSUARIO={0}", objusuario.Id));
			return 1;
		}






















	}
}