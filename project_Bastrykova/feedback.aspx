<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="project_Bastrykova.WebForm4" %>

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
                <div class="feedback">
                    <h2>Обратная связь</h2>
                    <p>
                        Нам важно знать, что ты думаешь о нас.
                        <br>
                        Напиши нам все, что ты хочешь сказать: впечатления о концертах, замечания, предложения.<br>
                        Всё прочитаем и, быть может, даже ответим:)
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="feedback">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <p>Как тебя зовут?</p>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:TextBox ID="Name" class="input-info" runat="server" placeholder="Имя"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <p>Напиши свой e-mail</p>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="Email" class="input-info" runat="server" placeholder="E-mail"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <p>Напиши свой отзыв, предложение, вопрос</p>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:TextBox ID="Comment" class="input-info-text" runat="server" Rows="10" TextMode="MultiLine" placeholder="Комментарий"></asp:TextBox>

                            </td>
                        </tr>


                        <tr>
                            <td>

                                <asp:Button ID="Button1" class="btn btn-outline-success my-2 my-sm-0" runat="server" OnClick="Button1_Click" Text="Отправить" />

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
