﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/administrador.Master" AutoEventWireup="true" CodeBehind="abccEstadoyPais.aspx.cs" Inherits="ProyectoWebPageMaster.GUI.abcsubclasificacionaspx" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
	.form-control {}
    .paddincito {
        padding:60px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 		  
    <!-- end normal -->
         

           <!---  </div>
             <div class="col-md-5"></div>
                    </div>

	</div>--->
   
   <!-- <div class="col-md-12">


        <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">General
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Conversaciones</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Estadisticas</a>
  </li>
<li class="pull-right"> <button type="button" class="btn btn-outline-primary">Editar Perfil</button>
 </li> 

</ul>

  </div>--->
	<!---<div>

 <nav class="navbar-default navbar-side"  role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu"  style="height:460PX" >
                 


                    <li class="active-link">
                        <a href="index.html" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   

                    <li>
                        <a href="ui.html"><i class="fa fa-table "></i>UI Elements  <span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="blank.html"><i class="fa fa-edit "></i>Blank Page  <span class="badge">Included</span></a>
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>My Link Two</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                    </li>
                    
                </ul>
                            </div>

        </nav>

		</div>--->
        <!-- /. NAV SIDE  -->
     <!--   <div id="page-wrapper" >-->
          <!--  <div id="page-inner">--->
                <div class="row paddincito">
                   
                     <h2>ADMIN DASHBOARD</h2> 
                          <asp:Button ID="Btn_returnMaster" runat="server" CssClass="btn btn-outline-danger" Text="Return" OnClick="Btn_returnMaster_Click" />
                
                </div>              
                 <!-- /. ROW  -->
            
             <!--   <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome Jhon Doe ! </strong> You Have No pending Task For Today.--->
                          
                     <!--   </div>
                       
                    </div>
                    </div>--->

    <div class="row paddincito">
	 <div class="container-fluid">
<section class="resume-section align-items-center" >
	<div class="col-mb-8">
		<div class="card text-center" style="position:inherit">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Tipos de Usuario</h5>
    <p class="card-text">Ingrese los datos aquí:</p>
				
                         <asp:textbox runat="server" visible="false" id="txtidpais"></asp:textbox>
                            <label>Pais:</label><br />
                             <asp:TextBox ID="txtpais" CssClass="form-control" runat="server"></asp:TextBox><br />
                                                                  
						<br />
                        <asp:Button ID="btnagregar" runat="server" Text="Agregar " CssClass="btn btn-outline-danger" OnClick="btnagregar_Click" />
                        <asp:Button ID="btnmodificar" runat="server" Text="Modificar" CssClass="btn btn-outline-danger" OnClick="btnmodificar_Click" />
                        <asp:Button ID="btneliminar" runat="server" Text="Eliminar" CssClass="btn btn-outline-danger" OnClick="btneliminar_Click" />
					
					
                    <div class="col-lg-6 col-md-6">
                      
                        <div class="table-responsive">
                           
                           <asp:GridView ID="GridViewpaises" runat="server" OnRowDataBound="GridViewpaises_RowDataBound" OnSelectedIndexChanged="GridViewpaises_SelectedIndexChanged"></asp:GridView>

                        </div>
                    </div>
           
                <!-- /. ROW  -->
                <hr>
               
						<h5>Ingresa Los datos del Estado</h5>
					
					
                            <label>Estado:</label><br />
                             <asp:TextBox ID="txtestado" CssClass="form-control" runat="server"></asp:TextBox><br />
                           <label>Estado:</label><br />
                        <asp:DropDownList ID="dropPaises" runat="server" OnSelectedIndexChanged="dropPaises_SelectedIndexChanged"></asp:DropDownList>
                            
                         <asp:textbox runat="server" visible="false" id="txtidestado"></asp:textbox><br />


                        
						<br />
                        <asp:Button ID="btnagregarEstado" runat="server" Text="Agregar " CssClass="btn btn-outline-danger" OnClick="btnagregarEstado_Click" />
                        <asp:Button ID="btnmodificarEstado" runat="server" Text="Modificar" CssClass="btn btn-outline-danger" OnClick="btnmodificarEstado_Click" />
                        <asp:Button ID="btneliminarEstado" runat="server" Text="Eliminar" CssClass="btn btn-outline-danger" OnClick="btneliminarEstado_Click" />
						
                        <br>
                        <br>
                       
                      

            </div>
                    </div>






					
                    <div class="col-lg-6 col-md-6">
                      
                        <div class="table-responsive">
                           
                           <asp:GridView ID="gridviewestados" runat="server" OnSelectedIndexChanged="gridviewestados_SelectedIndexChanged"></asp:GridView>

                        </div>
                    </div>
                </div>
    
    </section>
         
	  </div>
        

			
      </div>
		


	

































			<!--	 </div>-->
                 
	  
	<script src="../recursos/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="../recursos/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="../recursos/js/custom.js"></script>
	 <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />



	








</asp:Content>


