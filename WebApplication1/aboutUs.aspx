<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="WebApplication1.aboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row pt-5 pb-5">
                <div class="col-12 pt-3 text-center">
                    <h2>E-Biblioteka</h2>
                    <hr>
                </div>
                <div class="col-md-5">
                    <img class="img-fluid" src="imgs/library_building.jpg"" alt="">
                </div>
                <div class="col-md-7 pt-md-0 pt-3">
                    <p>
                        E-Bilblioteka to nowoczesna internetowa wypożyczalnia książek, dzięki której będziesz mógł cieszyć się swoimi ulubionymi książkami kiedy tylko chcesz.
                    </p>
                    <p>
                        Korzystając z naszej cyfrowej wyszukiwarki tytułów możesz w łatwy i szybki sposób znaleźć interesujący Cię tytuł spośród ponad 2 tysięcy pozycji w naszej bazie, którą staramy się systematycznie powiększać dodając kolejne tytuły.
                        <br>
                        <br />
                        Wystarczy, że stworzysz swoje konto, zarezerwujesz książkę, a następnie odbierzesz ją osobiście. Zarezerwować pozycje możesz w dowolnej chwili natomiast odebrać w godzinach otwarcia.
                    </p>
                    <p>
                        Nasz budynek mieści się w Rzeszowie przy ulicy Słonecznej 62, gdzie możesz zarówno odebrać zarezerwowane pozycje jak również skorzystać z naszej czytelni, aby w komfortowych warunkach popracować jak i po prostu poczytać ulubione tytuły.
                    </p>
                    <p>
                        W przypadku pytań lub wątpliwości skontaktuj się z nami.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 p-2">
                    <div class="shadow-sm card kontakt">
                        <div class="shadow p-3 bg-white roundedcard-body kontakt text-center">
                            <h3><i class="fas fa-map-marker-alt"></i></h3>
                            <br>
                            <h5 class="card-title text-center"><b>Nasz adres</b></h5>
                            <p class="card-text text-center">ul.Słoneczna 62 35-082 Rzeszów</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 p-2">
                    <div class="shadow-sm card kontakt">
                        <div class="shadow p-3 bg-white roundedcard-bodycard-body kontakt text-center">
                            <h3><i class="fas fa-envelope"></i></h3>
                            <br>
                            <h5 class="card-title text-center"><b>Napisz do nas</b></h5>
                            <p class="card-text text-center">ebiblioteka@gmail.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 p-2">
                    <div class="shadow-sm card kontakt">
                        <div class="shadow p-3 bg-white roundedcard-body card-body kontakt text-center">
                            <h3><i class="fas fa-phone"></i></h3>
                            <br>
                            <h5 class="card-title text-center"><b>Zadzwoń do nas</b></h5>
                            <p class="card-text">+48 (17)8433413</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 p-2">
                    <div class="shadow-sm card kontakt" style="height: 75%;">
                        <div class="shadow p-3 bg-white roundedcard-body card-body kontakt text-center">
                            <h1><i class="fas fa-door-open"></i></h1>
                            <br>
                            <h4 class="card-title text-center"><b>Godziny otwarcia</b></h4>
                            <p class="card-text">Pon - Pt 8:00 - 18:00</p>
                            <p class="card-text">Sob 8:00 - 14:00</p>
                            <p class="card-text">Niedz nieczynne</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 p-2">
                    <div class="shadow-sm card kontakt" style="height: 75%;">
                        <div class="shadow p-3 bg-white roundedcard-body kontakt text-center" style="height: 100%;">
                            <div class="embed-responsive embed-responsive-16by9" style="height: 100%;">
                                <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d164115.76583087415!2d21.848370372720634!3d50.00556630128511!2m3!1f0!
                                               2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473cfae3cc14d449%3A0xd2240d31b33eb2ed!2zUnplc3rDs3c!5e0!3m2!
                                               1spl!2spl!4v1610642443269!5m2!1spl!2spl"
                                    height="100%" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
