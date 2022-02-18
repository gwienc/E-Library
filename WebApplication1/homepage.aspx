<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication1.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .parallax {
            height: 30vw;
            background-image: url("../imgs/open_book_5.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
    <section>
        <div id="slides" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#slides" data-slide-to="0" class="active"></li>
                <li data-target="#slides" data-slide-to="1"></li>
                <li data-target="#slides" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imgs/Library_500px_captions.jpg" class="d-block w-100" alt="Usługi CNC">
                    <div class="carousel-caption" style="color: white">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="imgs/book5_500px_captions.jpg" class="d-block w-100" alt="Usługi CNC">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="imgs/books_online_2_500px_captions.jpg" class="d-block w-100" alt="Usługi CNC">
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#slides" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#slides" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>
    <section>
        <div id="cards_landscape_wrap-2">
            <div class="container">
                <div class="row p-5 justify-content-center" style="font-family: 'Imprint MT Shadow'">
                    <div class="col-6 shadow-lg p-3" style="background-color: white">
                        <center>
                            <h1>Nasze cechy</h1>
                            <p><b>Nasze 3 podstawowe cechy </b></p>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="imgs/book-search.jpg" alt="" />
                                </div>
                                <div class="text-container">
                                    <h6>Cyfrowa baza książek</h6>
                                    <p>Skorzystaj z naszej cyfrowej bazy książek oraz wyszukiwarki, aby znaleźć interesującą Cię pozycję.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="imgs/reading_room.jpg" alt="" />
                                </div>
                                <div class="text-container">
                                    <h6>Czytelnia</h6>
                                    <p>Skorzystaj z naszej czytelni na miejscu, gdzie w komfortowych warunkach będziesz mógł skorzystać z naszych tytułów.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="imgs/online-access.jpg" alt="" />
                                </div>

                                <div class="text-container">
                                    <h6>Dostęp online</h6>
                                    <p>Korzystaj zdalnie z naszej wypożyczalni ze swojego konta 24 godziny na dobę w celu zarządzania swoimi pozycjami.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container-fluid parallax">
            <div class="parallax">
                <div class="row">
                </div>
            </div>
        </div>
    </section>
    <section>
        <div id="cards_landscape_wrap-2">
            <div class="container">
                <div class="row p-5 justify-content-center" style="font-family: 'Imprint MT Shadow'">
                    <div class="col-6 shadow-lg p-3" style="background-color: white">
                        <center>
                            <h1>Dołącz do nas już teraz</h1>
                            <p><b>Wystarczy 3 kroki, żeby cieszyć się swoimi ulubionymi tytułami </b></p>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="card-flyer h-100">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="imgs/registration_1.jpeg" alt="" />
                                </div>
                                <div class="text-container pt-5">
                                    <h6>Zarejestruj się</h6>
                                    <p>Przejdź do zakładki Rejestracja i stwórz swoje konto</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="card-flyer h-100">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="imgs/book-search.jpg" alt="" />
                                </div>
                                <div class="text-container pt-5">
                                    <h6>Zarezerwuj książkę</h6>
                                    <p>Skorzystaj z naszej cyfrowej bazy danych wraz z wyszukiwarką, aby znaleźć interesujący Cię tytuł, a następnie zarezerwuj go</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="card-flyer h-100">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="imgs/library_building.jpg" alt="" />
                                </div>
                                <div class="text-container pt-5">
                                    <h6>Odwiedź nas</h6>
                                    <p>Odbierz swoje zarezerwowane książki w naszej placówce</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
