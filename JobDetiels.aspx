<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobDetiels.aspx.cs" Inherits="JobDetiels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- Page Content -->
 <div id="page-wrapper">
     <div class="row">
     <form  runat="server" method="post"  enctype="multipart/form-data" >
    <div class="row">
     <div class="panel panel-primary">
                        <div class="panel-heading">
                           تفاصيل الوظيفة
                        </div>
                     
                        <div class="panel-body">
      <table>
        <tr>
          <td contenteditable="inherit" draggable="auto">
            <asp:GridView ID="GridView1" runat="server" 
               DataSourceID="AddJob" 
              DataKeyNames="job_name" AutoGenerateColumns="False"  >
                <Columns>
                    <asp:BoundField DataField="job_name" HeaderText="اسم الوظيفة" ReadOnly="True" SortExpression="job_name"  />
                    <asp:BoundField DataField="field" HeaderText="مجال التخصص" SortExpression="field"  />
                    <asp:BoundField DataField="company_name" HeaderText="اسم الشركة" SortExpression="company_name" />
                    <asp:CommandField ShowSelectButton="True" HeaderText="تفاصيل الوظيفة" />
                </Columns>
               
            </asp:GridView>
             
          </td>
            <asp:DetailsView ID="DetailsView1" runat="server"
              DataSourceID="Details" Height="50px" Width="301px" AutoGenerateRows="False" DataKeyNames="job_name" >
                <Fields>
                    <asp:BoundField DataField="job_name" HeaderText="الوظيفة"  />
                    <asp:BoundField DataField="field" HeaderText="مجال التخصص"  />
                    <asp:BoundField DataField="company_name" HeaderText="اسم الشركة" />
                    <asp:BoundField DataField="type" HeaderText="نوع الدوام" />
                    <asp:BoundField DataField="city" HeaderText="المدينة" />
                    <asp:BoundField DataField="publish_date" HeaderText="تاريخ النشر"  />
                    <asp:BoundField DataField="deadline" HeaderText="تاريخ نهاية النشر"  />
                    <asp:BoundField DataField="detiels" HeaderText="تفاصيل الوظيفة" />
                </Fields>
              
            </asp:DetailsView>
        
        </tr>
      </table>
      &nbsp;&nbsp;

         <asp:SqlDataSource ID="Details" runat="server" 
        ConnectionString="<%$ ConnectionStrings:JobConnectionString %>"
        SelectCommand="SELECT * FROM [AddJob] WHERE ([job_name] = @job_name)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="GridView1" Name="job_name" 
                     PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
                
      </asp:SqlDataSource>
         <asp:SqlDataSource ID="AddJob" runat="server" 
        ConnectionString="<%$ ConnectionStrings:JobConnectionString %>"
        SelectCommand="SELECT [job_name], [field], [company_name] FROM [AddJob]" >
      </asp:SqlDataSource>

        </div>   
        </div>
         <div class="panel-footer">
                           
             </div>
        </div>
           </form>

         </div>
 </div>
</asp:Content>

