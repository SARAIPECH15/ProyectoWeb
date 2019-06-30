<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/administrador.Master" AutoEventWireup="true" CodeBehind="abcGenero.aspx.cs" Inherits="ProyectoWebPageMaster.GUI.abcESTATUS" EnableEventValidation="false" %>
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
    Género
  </div>
  <div class="card-body">
    <h5 class="card-title">Tipos de Género</h5>
   


                            <label>Nombre Género</label>
                        <asp:TextBox ID="txt_Genero" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:TextBox ID="txt_CODIGO_GEN" Visible="false" CssClass="form-control" runat="server"></asp:TextBox>
                            <p class="help-block">Porfavor  escribe aquí.</p>



                  
						<br />
                        <asp:Button ID="btn_AgregarGen" CssClass="btn btn-outline-primary" runat="server" Text="Agregar" OnClick="btn_AgregarGen_Click"/>
                         <asp:Button ID="btn_ModificarGen" CssClass="btn btn-outline-primary" runat="server" Text="Modificar" OnClick="btn_ModificarGen_Click"/>
                         <asp:Button ID="btn_EliminarGen" CssClass="btn btn-outline-primary" runat="server" Text="Eliminar" OnClick="btn_EliminarGen_Click"/>
                        <br >
                        <br>
                       
                      

      </div>
            </div>
        
                 
                     <asp:GridView ID="dgv_Genero" CssClass="table table-hover" OnRowDataBound="dgv_Genero_RowDataBound" 
                      OnSelectedIndexChanged="dgv_Genero_SelectedIndexChanged" NullDisplay="" runat="server"></asp:GridView>

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
