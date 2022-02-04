<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto pb-5 pt-5">
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
                                    <h4>Rejestracja użytkownika</h4>
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
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Imię i nazwisko"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Podaje właściwe imię i nazwisko" BorderColor="#CC0000" ControlToValidate="TextBox3" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z]{1,} [a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Data urodzenia</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Data urodzenia" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Numer kontaktowy</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Numer tel" TextMode="Number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Podaj właściwy nr telefonu" ControlToValidate="TextBox5" ForeColor="#CC0000" ValidationExpression="^[0-9]{9}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Adres email</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Adres email" TextMode="Email"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox6" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Podaj prawidłowy adres email</asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Województwo</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Wybierz" Value="select" />
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
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Miasto"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Podaj prawidłowe dane" ControlToValidate="TextBox8" ForeColor="#CC0000" ValidationExpression="^[- a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Kod pocztowy</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Kod pocztowy"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Podaj kod pocztowy w formacie xx-xxx" ControlToValidate="TextBox9" ForeColor="#CC0000" ValidationExpression="^[0-9]{2}-[0-9]{3}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Adres</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pełny adres" TextMode="MultiLine" Rows="2"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Podaj prawidłowe dane w formacie ul.[nazwa ulicy] [nr domu], [kod pocztowy xx-xx] [miasto]" ControlToValidate="TextBox7" ForeColor="#CC0000" ValidationExpression="^ul.[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,} [a-zA-Z0-9]{1,}, [0-9]{2}-[0-9]{3} [a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
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
                            <div class="col-md-6">
                                <label>Nazwa użytkownika</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Nazwa użytkownika"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Hasło</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Zarejestruj się" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
