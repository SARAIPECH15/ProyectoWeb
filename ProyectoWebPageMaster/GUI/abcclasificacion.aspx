<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/administrador.Master" AutoEventWireup="true" CodeBehind="abcclasificacion.aspx.cs" Inherits="ProyectoWebPageMaster.GUI.abccategoria" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
	.form-control {}
    .paddincito {
        padding:60px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	  

                   <!-- normal -->

    <!-- end normal -->
         

            
           
   

 

		
      
                    <div class="row paddincito">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                       
                 <!-- /. ROW  -->
                  <div class="row paddincito">
	 <div class="container-fluid">
<section class="resume-section align-items-center" >
	<div class="col-mb-8">
		<div class="card text-center" style="position:inherit">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Tipos de Categoría</h5>

               

			
			
                            <label>Nombre de la Categoría</label><br />
                        <asp:TextBox ID="txt_Categoria" CssClass="form-control" runat="server"></asp:TextBox><br />
                         <asp:TextBox ID="txt_Codifgo_Cat" CssClass="form-control" Visible="false" runat="server"></asp:TextBox><br />
                           
                      <!--  <asp:DropDownList ID="listaEstados" runat="server"></asp:DropDownList>-->
                         

                     
				
       
                         <asp:Button ID="Btn_AgregarCat" CssClass="btn btn-outline-primary" runat="server" Text="Agregar" OnClick="Btn_AgregarCat_Click"/>
                         <asp:Button ID="Btn_ModificarCat" CssClass="btn btn-outline-primary" runat="server" Text="Modificar" OnClick="Btn_ModificarCat_Click"/>
                         <asp:Button ID="Btn_EliminarCat" CssClass="btn btn-outline-primary" runat="server" Text="Eliminar" OnClick="Btn_EliminarCat_Click"/>
                        <br>
                        <br>
                       
                      


                    </div>






					
                    <div class="col-lg-6 col-md-6">
                      
                        <div class="table-responsive">
                            <asp:GridView ID="dgv_clasificacion" CssClass="table table-hover" OnRowDataBound="dgv_clasificacion_RowDataBound" 
                                OnSelectedIndexChanged="dgv_clasificacion_SelectedIndexChanged" NullDisplay="" runat="server"></asp:GridView>
                        </div>
                    </div>
            </div>
        
                </div>
                <!-- /. ROW  -->
                <hr>
    </section>
         

				</div>































				 </div>
                 
	  
	<script src="../recursos/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="../recursos/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="../recursos/js/custom.js"></script>
	 <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />



	








</asp:Content>
