<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Page Content -->
        <div id="page-wrapper">
            
            <div class="row">
                <form id="form1" runat="server" method="post"  enctype="multipart/form-data">
                
                     <div class="row">
          
                 <div class="panel panel-primary">
                        <div class="panel-heading">
                           جميع الوظائف
                        </div>
                     
                        <div class="panel-body">
                            <asp:gridview id="table1" runat="server" AllowPaging="True" />
                           <table  class="table table-responsive table-bordered table-striped">
                               <tr >
                                   <td>الوظيفة </td>
                                   <td>المجال</td>
                                   <td>الشركة</td>
                                   <td>المدينة</td>
                                   <td>الدوام</td>
                                   <td>تاريخ النشر</td>
                                  <td>آخر موعد</td>
                                   <td>تفاصيل الوظيفة</td>
                               </tr>
                                  <%=getjob()%> 

                           </table>
                        </div> 
                           
                        </div>
                        <div class="panel-footer">
                           
                        </div>
                       </div>
                     </form>

                 </div>

             

            </div>
  
</asp:Content>

