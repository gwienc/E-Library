<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="WebApplication1.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('table').each(function () {
                var table = $(this);
                table.prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 pb-5 pt-3">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Twój profil</h4>
                                    Stan konta<span> -</span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Twój status"></asp:Label>
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
                                <label>Imię i nazwisko</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Podaj prawidłowe imię i nazwisko" ControlToValidate="TextBox3" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z]{1,} [a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Data Urodzenia</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Numer kontaktowy</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Podaj prawidłowy nr tel xxxxxxxxx" ControlToValidate="TextBox5" ForeColor="#CC0000" ValidationExpression="^[0-9]{9}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Adres email</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Podaj prawidłowy email" ControlToValidate="TextBox6" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Województwo</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Dolnośląskie" Value="Dolnośląskie" />
                                        <asp:ListItem Text="Kujawsko-Pomorskie" Value="Kujawsko-Pomorskie" />
                                        <asp:ListItem Text="Lubelskie" Value="Lubelskie" />
                                        <asp:ListItem Text="Lubuskie" Value="Lubuskie" />
                                        <asp:ListItem Text="Łódzkie" Value="Łódzkie" />
                                        <asp:ListItem Text="Małopolskie" Value="Małopolskie" />
                                        <asp:ListItem Text="Mazowieckie" Value="Mazowieckie" />
                                        <asp:ListItem Text="Opolskie" Value="Opolskie" />
                                        <asp:ListItem Text="Podkarpackie" Value="Podkarpackie" />
                                        <asp:ListItem Text="Podlaskie" Value="Podlaskie" />
                                        <asp:ListItem Text="Pomorskie" Value="Pomorskie" />
                                        <asp:ListItem Text="Śląskie" Value="Śląskie" />
                                        <asp:ListItem Text="Świętokrzyskie" Value="Świętokrzyskie" />
                                        <asp:ListItem Text="Warmińsko-Mazurskie" Value="Warmińsko-Mazurskie" />
                                        <asp:ListItem Text="Wielkopolskie" Value="Wielkopolskie" />
                                        <asp:ListItem Text="Zachodniopomorskie" Value="Zachodniopomorskie" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Miasto</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="City"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Podaj prawidłowe dane" ControlToValidate="TextBox8" ForeColor="#CC0000" ValidationExpression="^[- a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Kod pocztowy</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Pin Code"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Podaj kod pocztowy w formacie xx-xxx" ControlToValidate="TextBox9" ForeColor="#CC0000" ValidationExpression="^[0-9]{2}-[0-9]{3}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Pełny adres</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Podaj prawidłowe dane w formacie ul.[nazwa ulicy] [nr domu], [kod pocztowy xx-xx] [miasto]" ControlToValidate="TextBox7" ForeColor="#CC0000" ValidationExpression="^ul.[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,} [a-zA-Z0-9]{1,}, [0-9]{2}-[0-9]{3} [a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge badge-pill badge-info">Dane logowania</span>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Nazwa użytkownika</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Stare hasło</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Nowe hasło</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Nowe hasło" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center></center>
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Zaktualizuj dane" OnClick="Button1_Click1" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Powrót na stronę główną</a><br />
                <br />
            </div>
            <div class="col-md-7 pb-5 pt-3">
                <div class="row pb-5">
                    <div class="card shadow-lg w-100 mr-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100px" src="imgs/books.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Twoje wypożyczone książki</h4>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Informacje o twoich książkach"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="table-responsive">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="member_id" HeaderText="ID Użytkownika" SortExpression="member_id" />
                                                <asp:BoundField DataField="member_name" HeaderText="Imię i nazwisko" SortExpression="member_name" />
                                                <asp:BoundField DataField="book_id" HeaderText="ID książki" SortExpression="book_id" />
                                                <asp:BoundField DataField="book_name" HeaderText="Tytuł książki" SortExpression="book_name" />
                                                <asp:BoundField DataField="issue_date" HeaderText="Data wypożyczenia" SortExpression="issue_date" />
                                                <asp:BoundField DataField="due_date" HeaderText="Termin zwrotu" SortExpression="due_date" />
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
                                        <img width="100px" src="imgs/books.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Twoje zarezerwowane książki</h4>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label3" runat="server" Text="Informacje o twoich książkach"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GridView2" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="member_id" HeaderText="Id użytkownika" SortExpression="member_id" />
                                                <asp:BoundField DataField="member_name" HeaderText="Imię i nazwisko" SortExpression="member_name" />
                                                <asp:BoundField DataField="book_id" HeaderText="Id książki" SortExpression="book_id" />
                                                <asp:BoundField DataField="book_name" HeaderText="Tytuł książki" SortExpression="book_name" />
                                                <asp:BoundField DataField="start_of_booking" HeaderText="Data rezerwacji książki" SortExpression="start_of_booking" />
                                                <asp:BoundField DataField="end_of_booking" HeaderText="Termin odebrania książki" SortExpression="end_of_booking" />
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
    </div>
</asp:Content>
