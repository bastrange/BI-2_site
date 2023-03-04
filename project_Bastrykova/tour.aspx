<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tour.aspx.cs" Inherits="project_Bastrykova.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <img src="img/group1.jpeg" width="100%" alt="">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h2 align="center">Гастрольный график</h2>
            </div>
        </div>
       
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <div class="dropdown">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                    </div>
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    
                    <ContentTemplate>
        

       
            <%var k = 0;
                        foreach (project_Bastrykova.Concert row in GetData(DropDownList1.SelectedValue))
                        {
                            Response.Write(String.Format(@"
                            <div class=""row"">
                                <div class=""col-sm-12"" style=""padding-bottom: 0"">
                                    <div class=""concerts-container"">
                                        <div class=""concert"">
                                            <div class=""concert-date"">
                                                <h4>{0}</h4>
                                            </div>
                                            <div class=""concert-info"">
                                                <h4>{1}</h4>
                                                <h5>{2}</h5>
                                                <br>
                                                <h6>{3}</h6>
                                                <h6>{4}</h6>
                                            </div>
                                            <div class=""concert-go"">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               </div>", row.date, row.city, row.time, row.place, row.@event));
                            k++;
                        }
               %>

       
    
                        </ContentTemplate>
                </asp:UpdatePanel>
    
    </div>
</asp:Content>
