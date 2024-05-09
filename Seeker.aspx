<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Seeker.aspx.cs" Inherits="Seeker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



   <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">عرض المتقدمين للوظيفة</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form runat="server" action="feedBack.aspx?key=addUni" method="post" enctype="multipart/form-data">
                  
                    </form>
                </div>



            </div>
            
           <div class="row">

                 <div class="panel panel-primary">
                        <div class="panel-heading">
                           بيانات طالب الوظيفة
                        </div>
                        <div class="panel-body">
                           <table  class="table table-responsive table-bordered table-striped">
                               <tr>
                                    <td>الوظيفة</td>
                                   <td>الايميل</td>
                                    <td>الاسم الاول</td>
                                   <td>الاسم الاخير</td>
                                   <td>الجنس</td>
                                   <td>رقم التلفون</td>
                                  
                                  <td>
                                      
                                      تفاصيل الوظيفة</td>
                                      <td><input type="submit" value=" قبول الطلب "OnClick="saveDataAccepted" class="btn btn-success" /></td>
                               </tr>
 

                                 <%=getCV()%> 
                           </table>
                            
                        </div>
                       
                    </div>

            </div>
 
            <
            <!-- /.row -->
        </div>
                           

                           
</asp:Content>

