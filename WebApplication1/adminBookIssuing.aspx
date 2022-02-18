<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookIssuing.aspx.cs" Inherits="WebApplication1.adminBookIssuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('table').each(function () {
                var table = $(this);
                table.prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            })
        });
    </script>
    <style>
        html, body, form {
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 pb-5">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Wypożyczalnia książek</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Id użytkownika</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="ID Użytkownika"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>ID Książki</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="ID Książki"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Idź" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Dane użytkownika</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Dane użytkownika" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Tytuł książki</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Tytuł książki" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Data wypożyczenia</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Data zwrotu</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="Wypożycz" OnClick="Button2_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Button3" runat="server" Text="Zwróć" OnClick="Button3_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Powrót na stronę główną</a><br />
                <br />
            </div>
            <div class="col-md-7 pb-5">
                <div class="row pb-5">
                    <div class="card shadow-lg w-100 mr-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Lista wypożyczonych książek</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <div class="table-responsive">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                            <Columns>
                                                <asp:BoundField DataField="member_id" HeaderText="ID użytkownika" SortExpression="member_id"></asp:BoundField>
                                                <asp:BoundField DataField="member_name" HeaderText="Dane użytkownika" SortExpression="member_name"></asp:BoundField>
                                                <asp:BoundField DataField="book_id" HeaderText="ID książki" SortExpression="book_id"></asp:BoundField>
                                                <asp:BoundField DataField="book_name" HeaderText="Tytuł książki" SortExpression="book_name"></asp:BoundField>
                                                <asp:BoundField DataField="issue_date" HeaderText="Data wypożyczenia" SortExpression="issue_date"></asp:BoundField>
                                                <asp:BoundField DataField="due_date" HeaderText="Data zwrotu" SortExpression="due_date"></asp:BoundField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card shadow-lg w-100 mr-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Lista zarezerwowanych książek</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_reservation_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <div class="table-responsive">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="ID Użytkownika" SortExpression="member_id" />
                                            <asp:BoundField DataField="member_name" HeaderText="Imię i nazwisko" SortExpression="member_name" />
                                            <asp:BoundField DataField="book_id" HeaderText="ID książki" SortExpression="book_id" />
                                            <asp:BoundField DataField="book_name" HeaderText="Tytuł książki" SortExpression="book_name" />
                                            <asp:BoundField DataField="start_of_booking" HeaderText="Data rezerwacji" SortExpression="start_of_booking" />
                                            <asp:BoundField DataField="end_of_booking" HeaderText="Termin odbioru rezerwacji" SortExpression="end_of_booking" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
