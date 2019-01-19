<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenthead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentInfoPage" runat="server">

    <section class="content-header">
        <h1>Orçamento
       
            <small>Produtos</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-info"></i>Página Principal</a></li>
        </ol>
    </section>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">


    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Catalogo de Produtos</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">

                        <iframe src="https://e.issuu.com/anonymous-embed.html?u=mmathparafusos&d=catalogo_mmath_parafusos___fixadore" style="height: 80vh;" width="100%" frameborder="0" allowfullscreen="true"></iframe>

                    </div>
                </div>
            </div>
        </div>
    </section>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentModal" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentScripts" runat="server">
</asp:Content>
