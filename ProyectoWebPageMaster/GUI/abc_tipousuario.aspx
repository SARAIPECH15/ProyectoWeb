<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="abc_tipousuario.aspx.cs" Inherits="ProyectoWebPageMaster.GUI.abc_tipousuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	<div>
	 <div class="container-fluid ">
<section class="resume-section align-items-center" >
		<div class="card text-center" style="position:inherit">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Tipos de Usuario</h5>
    <p class="card-text">Ingrese los datos aquí:</p>

	    
	  <asp:TextBox ID="Txt_id" runat="server" Visible="false" CssClass="form-control " ></asp:TextBox>
	 
	  <asp:TextBox ID="Txt_tipou" runat="server" CssClass="form-control" ></asp:TextBox>
	  <br />

	  <asp:Button ID="btn_g" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btn_g_Click" />
<asp:Button ID="btn_m" CssClass="btn btn-primary" runat="server" Text="Modificar" OnClick="btn_m_Click" />
<asp:Button ID="btn_e" CssClass="btn btn-primary" runat="server" Text="Eliminar" OnClick="btn_e_Click" />

  </div>
  <div class="card-footer text-muted">
    2 days ago
	
  </div>
</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-9">
		 <asp:GridView ID="gvd_tipous" runat="server" OnRowDataBound="gvd_tipous_RowDataBound" OnSelectedIndexChanged="gvd_tipous_SelectedIndexChanged" CssClass=" table table-hover" NullDisplayText="" Width="152px"> </asp:GridView>
	</div>
		</div>
</section>
	

 </div>
</div>

<hr>
	



















  




	 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  


	
















</asp:Content>
