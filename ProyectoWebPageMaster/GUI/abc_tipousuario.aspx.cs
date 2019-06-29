using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ProyectoWebPageMaster.BO;
using ProyectoWebPageMaster.DAO;



namespace ProyectoWebPageMaster.GUI
{
	public partial class abc_tipousuario : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			gvd_tipous.DataSource = objexe.buscar_TIPOusuarios();
			gvd_tipous.DataBind();


		}

		Tipousuario_BO objbo = new Tipousuario_BO();
		Tipousuario_DAO objexe = new Tipousuario_DAO();




		public void LimpiarControles()
		{
			Txt_id.Text = "";
			Txt_tipou.Text = "";
		

		}

		protected void llenarbo()
		{
			objbo.Nombretipou = Txt_tipou.Text;
			

			
		}

		protected void btn_g_Click(object sender, EventArgs e)
		{
			llenarbo();
			objbo.Id = objexe.agregarTIPOUS(objbo);
			LimpiarControles();
		 gvd_tipous.DataSource = objexe.buscar_TIPOusuarios();
			gvd_tipous.DataBind();
		}

		protected void btn_m_Click(object sender, EventArgs e)
		{
			objbo.Id = Convert.ToInt32(Txt_id.Text);
			llenarbo();
			objbo.Id = objexe.modificatipousuario(objbo);
			gvd_tipous.DataSource = objexe.buscar_TIPOusuarios();
			gvd_tipous.DataBind();
			LimpiarControles();

		}

		protected void btn_e_Click(object sender, EventArgs e)
		{
			objbo.Id = Convert.ToInt32(Txt_id.Text);
			llenarbo();
			objbo.Id = objexe.eliminarusuario(objbo);
			gvd_tipous.DataSource = objexe.buscar_TIPOusuarios();
			gvd_tipous.DataBind();
			LimpiarControles();

		}

		protected void gvd_tipous_SelectedIndexChanged(object sender, EventArgs e)
		{
			Txt_id.Text = HttpUtility.HtmlDecode(gvd_tipous.SelectedRow.Cells[0].Text);
			Txt_tipou.Text = HttpUtility.HtmlDecode(gvd_tipous.SelectedRow.Cells[1].Text);


		}

		protected void gvd_tipous_RowDataBound(object sender, GridViewRowEventArgs e)
		{
			if (e.Row.RowType == DataControlRowType.DataRow)
			{
				e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(gvd_tipous, "Select$" + e.Row.RowIndex);
				e.Row.Attributes["style"] = "cursor:pointer";
			}
		}
	}
}