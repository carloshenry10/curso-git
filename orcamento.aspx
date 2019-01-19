<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orcamento.aspx.cs" Inherits="WebApplication1.orcamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenthead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentInfoPage" runat="server">

    <section class="content-header">
        <h1>Orçamento
       
            <small>Produtos</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-files-o"></i>MMATH Parafusos & Fixadores</a></li>
            <%--<li><a href="#">Forms</a></li>--%>
            <li class="active">Novo Orçamento</li>
        </ol>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

   

          

    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Selecione os Produtos  - <asp:Label ID="lblorc" runat="server" Text="ORC2019123124"></asp:Label></h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Produto</label>
                            <asp:DropDownList class="form-control select2" ID="DropDownList_Produto" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Produto_Change">
                            </asp:DropDownList>
                        </div>

                          <div class="form-group">
                            <asp:TextBox ID="txtcodP" type="hidden" class="form-control" runat="server"  autocomplete="off"></asp:TextBox>
                        </div>


                    </div>

                    <div class="col-md-1">
                        <div class="form-group">
                            <label>Quantidade</label>
                            <asp:TextBox ID="txt_qnt"
                                class="form-control"
                                runat="server"
                                placeholder="Quantidade"
                                autocomplete="off"
                                AutoPostBack="True"
                                OnTextChanged="txt_qnt_TextChanged"></asp:TextBox>

                        </div>

                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Valor Unitário</label>
                            <asp:TextBox ID="txt_vlUnit" class="form-control" runat="server" placeholder="R$ Valor Unitário" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Subtotal</label>
                            <asp:TextBox ID="txt_vlSub" class="form-control" runat="server" placeholder="R$ Subtotal" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">


                          <%--  <a class="btn btn-app">
                                <i class="fa fa-plus"></i>Adicionar Produto
                            </a>--%>
                            <br/>
                            <asp:Button ID="btn" class="btn btn-default" runat="server" Text="Adicionar Produto" OnClick="AddItem"></asp:Button>



                        </div>
                    </div>

                </div>
                <!-- /.row -->

                <br />
                <br />

                <div class="row"  id="div_tabela" runat="server">

                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Produtos Selecionados</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body no-padding">
                                    <table class="table table-condensed">


                                        <asp:GridView ID="GV1" runat="server" CssClass="table table-condensed" GridLines="None" Width="100%">
                                        </asp:GridView>


                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>

                        </div>
                    </div>
                </div>


                <div class="row" id="div_valores" runat="server">

                    <div class="col-md-10">
                        <div class="form-group">


                            <div class="alert alert-info alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <h2><i class="icon fa fa-money"></i>
                                    R$ 
                                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                </h2>
                                <h3>Valor Total do Orçamento.
                                </h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">

                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default">
                                &nbsp;&nbsp;Confirmar Orçamento
                           
                            </button>

                        </div>

                        <%--                          <div class="form-group">

                            <a class="btn btn-danger ">
                                <i class="fa fa-minus"></i>&nbsp;&nbsp;Cancelar Orçamento &nbsp; &nbsp;
                            </a>

                        </div>--%>
                    </div>

                </div>

            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                Acesse nosso Catalogo <a href="https://issuu.com/mmathparafusos/docs/catalogo_mmath_parafusos___fixadore">nosso Catalogo </a>e conheça todos produtos Comercializados.
       
            </div>
        </div>
        <!-- /.box -->


    </section>
    <!-- /.content -->
  

</asp:Content>





<asp:Content ID="Content4" ContentPlaceHolderID="ContentModal" runat="server">

    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Confirmar Orçamento</h4>
                </div>
                <div class="modal-body">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title"></h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="form-horizontal">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Nome</label>

                                    <div class="col-sm-10">

                                        <div class="form-group">
                                            <asp:TextBox ID="txtNome" class="form-control" runat="server" placeholder="Insira seu Nome" autocomplete="off"></asp:TextBox>
                                        </div>

                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">E-mail</label>

                                    <div class="col-sm-10">

                                        <div class="form-group">
                                            <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="Insira seu E-mail" autocomplete="off"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Telefone</label>

                                    <div class="col-sm-10">

                                        <div class="form-group">
                                            <asp:TextBox ID="txtTel" class="form-control" runat="server" placeholder="Insira seu Telefone" autocomplete="off"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>
                              
                            </div>
                            <!-- /.box-body -->
                        
                            <!-- /.box-footer -->
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <asp:Button runat="server" ID="btn_send" Text="Confirmar" CssClass="btn btn-primary" OnClick="btn_send_Click" UseSubmitBehavior="false" data-dismiss="modal" />

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentScripts" runat="server">
</asp:Content>
