<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="group.aspx.cs" Inherits="project_Bastrykova.WebForm3" %>
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
                <h2 align="center">Состав группы</h2>
            </div>
        </div>
        <div class="row">
                    <%var k = 0;
                        foreach (project_Bastrykova.Group row in GetData())
                        {
                            var img = GetImages();
                            Response.Write(String.Format(@"
                       <div class=""col-md-4"">
                            <div class=""product-inner"">
                                <div class=""product-wrap"">
                                    <img src=""img/{0}"">
                                </div>
                                <div class=""product-info"">
                                    <span class=""product-title"">{1}</span><br/>
                                    <span class=""product-title"">{2}</span><br/>
                                    <div class=""footerSocIcons"">
                                        <a href=""{3}"">
                                            <img src=""https://bdva.ru/images/icon__footer--vk.svg"" alt=""img"">
                                        </a>
                                        <a href=""{4}"">
                                            <img src=""https://bdva.ru/images/icon__footer--inst.svg"" alt=""img"">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>",
                                img[k], row.name, row.role, row.vk, row.inst));
                            k++;
                        }
                    %>
            </div>
        </div>
    
</asp:Content>
