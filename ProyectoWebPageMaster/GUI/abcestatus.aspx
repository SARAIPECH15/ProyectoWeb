<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/administrador.Master" AutoEventWireup="true" CodeBehind="abcestatus.aspx.cs" Inherits="ProyectoWebPageMaster.GUI.abcestado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style type="text/css">
	.form-control {}
    .paddincito {
        padding:60px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row paddincito">
	 <div class="container-fluid">
<section class="resume-section align-items-center" >
	<div class="col-mb-8">
		<div class="card text-center" style="position:inherit">
  <div class="card-header">
    Estatus
  </div>
  <div class="card-body">
    <h5 class="card-title">Tipos de Estatus</h5>


	    
	  <asp:TextBox ID="Txt_id" runat="server" Visible="false" CssClass="form-control " ></asp:TextBox>
	 
	  <asp:TextBox ID="txt_estatus" runat="server" CssClass="form-control" OnTextChanged="txt_estatus_TextChanged" ></asp:TextBox>
	  <br />

	  <asp:Button ID="btn_GuardarEstatus" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btn_GuardarEstatus_Click" />
<asp:Button ID="btn_ModificarEstatus" CssClass="btn btn-primary" runat="server" Text="Modificar" OnClick="btn_ModificarEstatus_Click"/>
<asp:Button ID="btn_EliminarEstatus" CssClass="btn btn-primary" runat="server" Text="Eliminar" OnClick="btn_EliminarEstatus_Click" />

  </div>
  <div class="card-footer text-muted">
    2 days ago
	 
  </div>
</div>		</div>
	<div class="col-md-4">
		<asp:GridView ID="dgv" runat="server" OnRowDataBound="dgv_RowDataBound" OnSelectedIndexChanged="dgv_SelectedIndexChanged" CssClass=" table table-hover" NullDisplayText="" Width="152px"> </asp:GridView>
		 
	</div>
		
</section>
	

 </div>
</div>

<hr>
	





























                 
	  
	<script src="../recursos/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="../recursos/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="../recursos/js/custom.js"></script>
	 <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />



	








</asp:Content>
