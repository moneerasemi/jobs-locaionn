<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CV.aspx.cs" Inherits="CV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    <!-- Page Content -->
        <div id="page-wrapper">
            
            <div class="row">
                <form  runat="server" method="post"  enctype="multipart/form-data">
                 <div class="panel panel-primary">
                        <div class="panel-heading">
               معلومات الحساب
                        </div>
                        <div class="panel-body">

                            <div class="row">

                                  <div class='col-lg-3' >
                                    <div class='form-group'>
                                            <label>الوظيفة</label>
											<asp:Textbox  class="form-control" id="job_name" name="job_name" runat="server"  />   
                                        </div>
								</div>
                                                                  
                               <div class='col-lg-3'>     
                                        <div class='form-group'>
                                            <label>الاسم الأول</label>
											<asp:textbox type="text" class="form-control" id="First_Name" name="First_Name" runat="server"/>   
                                        </div>
								</div>
                                 <div class='col-lg-3'>     
                                        <div class='form-group'>
                                            <label>الاسم الاخير</label>
											<asp:TextBox type="text" class="form-control" id="Last_Name" name="Last_Name" runat="server"/>   
                                        </div>
								</div>

                                
                                  <div class='col-lg-3'>       
                                        <div class='form-group'>
                                            <label>رقم الهاتف</label>
											<asp:TextBox class="form-control" type="text" name="Phone_No" id="Phone_No" runat="server"/>
                                        </div>
								</div>


                                   <div class='col-lg-3'>


                                    <div class='form-group'>
                                        <label>الجنس</label>
                                        <asp:DropDownList class="form-control" ID="Gender"  runat="server" >
                                             <asp:ListItem Value="ذكر" >ذكر</asp:ListItem>
                                            <asp:ListItem Value="أنثى" >أنثى</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>

                              

                                 <div class='col-lg-5'>
                                    <div class='form-group'>
                                            <label>الايميل</label>
											<asp:textbox type="text" class="form-control" id="Email" name="Email" runat="server"/>   
                                        </div>
								</div>
                               



                               <%-- <div class='col-lg-4'>                                                                           
                                       <div class='form-group'>
                                            <label>مسار ملف السيرة الذاتية </label>
											<input class="form-control" type="file" name="CV_file" id="Cv_file" />
                                        </div>
								</div>--%>





                                 <div class='col-lg-4'>                                                                           
                                       <div class='form-group'>
                                            <label> السيرة الذاتية </label>
											  <asp:FileUpload ID="FileUpload1" runat="server" />
                                            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />

                                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"  AutoGenerateColumns="False" Width="255px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="File">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                                                    <asp:BoundField DataField="Type" HeaderText="File Type" />
                                                </Columns>
                                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#330099" />
                                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                                <SortedDescendingHeaderStyle BackColor="#7E0000" />

 
                                       

                                            </asp:GridView>

                                        </div>
								</div>
					




                            </div>
                           
                        </div>
                        <div class="panel-footer">
                                <asp:Button ID="addcv" runat="server" Text ="حفظ البيانات" OnClick="CVjob_Click" class="btn btn-success"/>
                           
                                                  <asp:Label ID="lblmsg1" runat="server" />

                                

                                  </div>
                    </div>
                    </form>

             

            </div>

    <div>
        </div>
            </div>
    
      

   
</asp:Content>

