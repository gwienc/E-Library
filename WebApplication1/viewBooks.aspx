﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="WebApplication1.viewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 p-4">
                <center>
                    <h2>Biblioteka
                    </h2>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col-12 p-4 pb-5">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">
                                            <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Autor:
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Gatunek:
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Język:
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Wydawca:
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Data wydania:
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Ilość stron:
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edycja:
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Cena (zł):
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Aktualna ilość:
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Dostępna ilość:
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Opis:
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                            <asp:Button class="btn btn-danger ml-3" ID="Button1" CommandName="book" runat="server" Text="Zarezerwuj" OnClick="Button1_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
