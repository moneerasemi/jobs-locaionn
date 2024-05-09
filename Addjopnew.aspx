<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addjopnew.aspx.cs" Inherits="Addjopnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Content -->
        <div id="page-wrapper">
            
            <div class="row">
                <form  runat="server" method="post"  enctype="multipart/form-data">
                 <div class="panel panel-primary">
                        <div class="panel-heading">
              معلومات الوظيفة 
                        </div>
                        <div class="panel-body">

                            <div class="row">

                                <div class='col-lg-3' >
                                    <div class='form-group'>
                                            <label>اسم الوظيفة</label>
											<asp:Textbox  class="form-control" id="job_name" name="job_name" runat="server"  />   
                                        </div>
								</div>


                                 <div class='col-lg-3'>   
                                        <div class='form-group'>
                                            <label>مجال التخصص</label>
                                                                                 
                                               <asp:DropDownList  id="field" class="form-control" runat="server">
                                                 <asp:ListItem Value="علوم حاسوب"> علوم حاسوب</asp:ListItem>
                                                <asp:ListItem Value="الهندسة" >الهندسة</asp:ListItem>
                                                 <asp:ListItem Value="التربية والتعليم" >التربية والتعليم</asp:ListItem>
                                                 
                                                </asp:DropDownList>
                                        </div>					
								</div>                               
                                <div class='col-lg-3'>                                        
                                        <div class='form-group'>
                                            <label>اسم الشركة</label>
											<asp:Textbox  class="form-control" id="company_name" name="company_name" runat="server"/>   
                                        </div>
								</div>
                                 <div class='col-lg-3'>   
                                        <div class='form-group'>
                                            <label>المدينة</label>
                                           <asp:DropDownList class="form-control" id="city1"  runat="server">
                                                 <asp:ListItem Value="صنعاء" >صنعاء</asp:ListItem>
                                                <asp:ListItem Value="الحديدة" >الحديدة</asp:ListItem>
                                                 <asp:ListItem Value="حجة" >حجة</asp:ListItem>
                                                
                                                </asp:DropDownList>
                                        </div>					
								</div>

                                <div class='col-lg-3'>   
                                        <div class='form-group'>
                                            <label>الدوام</label>
                                            <asp:DropDownList ID="type1" class="form-control" runat="server">
                                                <asp:ListItem Value="دوام كامل" >دوام كامل</asp:ListItem>
                                               <asp:ListItem Value="دوام جزئي" >دوام جزئي</asp:ListItem>
                                               <asp:ListItem Value="دوام ساعات" >دوام ساعات</asp:ListItem>
                                           
                                                </asp:DropDownList>
                                        </div>					
								</div>
             <div class='col-lg-3'>
                                     <div class='form-group'>
                                            <label>تاريخ النشر</label>
											<asp:textbox class="form-control" type="date" name="publish_date" id="publish_date" runat="server"/>
                                           
                                        </div>
								</div>

					
                           <div class='col-lg-3'>
                                    
                                        
                                        <div class='form-group'>
                                            <label>اخر موعد</label>
											<asp:textbox class="form-control" type="date" name="deadline" id="deadline" runat="server"/>
                                           
                                        </div>

                                </div>
                                 </div>
                             <div class="row">

                                <div class='col-lg-7'>
                                     <div class='form-group'>
                                     <label>تفاصيل الوظيفة</label>

                                     <asp:TextBox ID="TextBox1" runat="server" Height="120px" TextMode="MultiLine" Width="602px"></asp:TextBox>


															
														</div>
                                            
								</div>


                                 </div>

                            <div class="panel-footer">
                                <asp:Button ID="addJop" runat="server" Text ="اضافة الوظيفة" OnClick="addJop_Click" class="btn btn-success"/>
                           
                                                  <asp:Label ID="lblmsg" runat="server" />

                                  </div>
                             </div>
                     </div>
		                    </form>
                   </div>
                     </div>
                     
</asp:Content>

