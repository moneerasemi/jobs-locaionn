<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detiels.aspx.cs" Inherits="Detiels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!-- Page Content -->
        <div id="page-wrapper">
            
            <div class="row">
                <form  runat="server" method="post"  enctype="multipart/form-data">
                 <div class="panel panel-primary">
                        <div class="panel-heading">
           تفاصيل الوظيفة
                        </div>
                        <div class="panel-body"> 
                        <asp:table id="table1" runat="server" AllowPaging="True" Width="25px" class="table table-responsive table-bordered table-striped"/>
                           <table  class="table table-responsive table-bordered table-striped">
                               <tr>
                               <%=getdetiels()%> 
                               </tr>
                           </table>
                        </div>
                     </div>
		                    </form>
                
                     </div>
                    </div>
    
                           


                                 
















                    
   
                     

   
                   




 

</asp:Content>

