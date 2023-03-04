<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="main_page.aspx.cs" Inherits="project_Bastrykova.WebForm1" %>

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
            <div class="row-near-concerts">
                <div class="col-sm-4">

                    <h4>Санкт-Петербург</h4>
                    <h4>13 июня</h4>
                    <p>
                        15:00<br>
                        Севкабель Порт<br>
                        Фестиваль Stereoleto 2021
                    </p>
                </div>
                <div class="col-sm-4">

                    <h2>БЛИЖАЙШИЕ КОНЦЕРТЫ</h2>
                    <br>
                    <a class="btn btn-outline-success my-2 my-sm-0" href="WebForm8.aspx" role="button">Посмотреть всю афишу</a>



                </div>
                <div class="col-sm-4">

                    <h4>Москва</h4>
                    <h4>20 июня</h4>
                    <p>
                        18:00<br>
                        Лужники<br>
                        NewBest XL + Приглашённые гости: Сети & Tesla Boy
                    </p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div id="video-bg">
                    <video width="100%" height="auto" preload="auto" autoplay="autoplay"
                        loop="loop" poster="videostop.png" muted="muted">
                        <source src="video/video_main1.mp4" type="video/mp4"></source>
                        <source src="video/video_main2.webm" type="video/webm"></source>
                    </video>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="row-about-history">
                <div class="col-md-3">
                    <img src="img/bidva1.jpg" width="100%" alt="" height="100%">
                </div>


                <div class="col-md-3">
                    <h5>БИ-2 - группа<br>
                        с богатой дискографией</h5>
                    <br>
                    <a class="btn btn-outline-success my-2 my-sm-0" href="discography.aspx" role="button">Посмотреть альбомы</a>
                </div>


                <div class="col-md-3">
                    <img src="img/bidva3.jpg" width="100%" alt="" height="100%">
                </div>


                <div class="col-md-3">
                    <h5>А ты знаешь<br>
                        всех участников группы?</h5>
                    <br>
                    <a class="btn btn-outline-success my-2 my-sm-0" href="group.aspx" role="button">Познакомиться</a>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
