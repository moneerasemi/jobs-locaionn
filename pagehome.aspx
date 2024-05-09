<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pagehome.aspx.cs" Inherits="pagehome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



      <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">فرصة للتوظيف </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <form id="form1" runat="server" method="post"  enctype="multipart/form-data">
               
                    </form>
            </div>
         
   
              <p style="direction: rtl">
        <asp:Image ID="Image" runat="server" Height="60px" 
            ImageUrl="~/Images/فرصة 1.gif" Width="110px" />


        &nbsp;<big>
            لخدمات التوظيف والتدريب هي مبادرة لدعم الاقتصاد اليمني من خلال بناء قدرات    
        الموارد البشرية في اليمن خلال دعم الباحثين عن العمل وأصحاب العمل في سوق العمل 
        اليمني. ونحن نعتقد أن جهودنا لتوفير امكانية التواصل بين الأشخاص المؤهلين مع 
        الوظائف المناسبة لمهاراتهم عامل أساسي للحصول على بيئة أكثر مهنية وأكثر إنتاجية 
        لرأس المال البشري اليمني. وبناء على ذلك، فإن هذا يؤدي إلى نمو اقتصادي أكثر كفاءة 
        للأمة كلها ...&nbsp;</big>



      

             <div class="row">
          
                 <div class="panel panel-primary">
                        <div class="panel-heading">
                     آخر الوظائف 
                        </div>

                        <div class="panel-body">
                            <asp:table id="table1" runat="server" AllowPaging="True" Width="25px" />
                           <table  class="table table-responsive table-bordered table-striped">
                               <tr>
                                   <td>الوظيفة </td>
                                   <td>المجال</td>
                                   <td>الشركة</td>
                                   <td>المدينة</td>
                                   <td>الدوام</td>
                                   <td>تاريخ النشر</td>
                                  <td>آخر موعد</td>
                                      <td>تفاصيل أكثر</td>
                                
                               </tr>

                                  <%=getjob()%> 

                           </table>
                        </div>

                        <div class="panel-footer">
                        
                    </div>   

            </div>
              
        </div> 


                 
        </div>
   


 
    

   
</asp:Content>

