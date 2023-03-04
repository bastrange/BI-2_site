<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="project_Bastrykova.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 align="center">Удаление аккаунта</h2>
                <div class="feedback">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <p>Введи свой логин</p>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:TextBox ID="Login" class="input-info" runat="server" placeholder="Логин"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <p>Введи свой пароль</p>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="Passw" class="input-info" runat="server" placeholder="Пароль"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:Button ID="Button1" class="btn btn-outline-success my-2 my-sm-0" runat="server" OnClick="Button1_Click" Text="Удалить аккаунт" />

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
