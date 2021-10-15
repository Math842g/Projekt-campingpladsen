<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projekt._Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title><%: Page.Title %></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css" />
    <link rel="stylesheet" href="/css/vendor/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="/css/site.min.css">
</head>
<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="57">
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Path="~/js/jquery-3.6.0.min.js" />
                <asp:ScriptReference Path="~/js/bootstrap.bundle.min.js" />
                <asp:ScriptReference Path="~/js/bootstrap-datepicker.min.js" />
                <asp:ScriptReference Path="~/js/leaflet.js" />
                <asp:ScriptReference Path="~/js/site.min.js" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/js/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/js/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/js/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/js/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/js/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/js/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/js/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/js/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div id="mapid"></div>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Campingplads</a>
                <button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-align-justify"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#quick-book">Quick Book</a></li>
                        <li class="nav-item"><a class="nav-link" href="#activities">Aktiviteter</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="text-center text-white d-flex masthead" style="background-image: url('images/camping-background.jpg');">
        </header>
        <section id="quick-book" class="col col-offset-xl-1 d-none d-xxl-block d-print-block shadow p-3 mb-5 bg-white rounded quick-book">
            <asp:UpdatePanel runat="server" UpdateMode="Always" ID="QuickBookUpdatePanel">

                <ContentTemplate>
                    <div class="container">
                        <div class="quick-book-md mx-auto">
                            <div class="row" style="padding-left: 25px;">
                                <div id="date-pick">
                                    <div class="col-auto input-daterange">
                                        <div class="row">
                                            <div class="col-auto">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="ArrivalDate" OnTextChanged="CalculateNewPrice" class="input-sm form-control date-range no-gray" name="start" ReadOnly="true" />
                                                    <label for="ArrivalDate">Ankomst</label>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="DepartureDate" OnTextChanged="CalculateNewPrice" class="input-sm form-control date-range no-gray" name="end" ReadOnly="true" />
                                                    <label for="DepartureDate">Afgang</label>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="form-floating">
                                                    <asp:DropDownList runat="server" ID="SpaceSize" OnTextChanged="CalculateNewPrice" class="input-sm form-control date-range no-gray" name="end" ReadOnly="true">
                                                        <asp:ListItem>Lille plads</asp:ListItem>
                                                        <asp:ListItem>Stor plads</asp:ListItem>
                                                        <asp:ListItem>Hytte</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <label for="SpaceSize">Plads størrelse</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="dropdown">
                                        <input type="text" class="form-control text-dropdown no-gray form-control-bigger" id="peopleText" data-bs-toggle="dropdown" value="1 Adult" readonly>
                                        <div class="dropdown-menu" style="width: auto">
                                            <div class="container">
                                                <div class="form-floating mb-1">
                                                    <asp:TextBox runat="server" type="number" class="form-control" ID="adultCount" onchange="updatePeopleText()" OnTextChanged="CalculateNewPrice" value="1" min="1" max="10" />
                                                    <label for="floatingInput">Adults</label>
                                                </div>
                                                <div class="form-floating mb-1">
                                                    <asp:TextBox runat="server" type="number" class="form-control" ID="childCount" onchange="updatePeopleText()" OnTextChanged="CalculateNewPrice" value="0" min="0" max="10" />
                                                    <label for="floatingInput">Children</label>
                                                </div>
                                                <div class="form-floating mb-1">
                                                    <asp:TextBox runat="server" type="number" class="form-control" ID="petCount" onchange="updatePeopleText()" OnTextChanged="CalculateNewPrice" value="0" min="0" max="2" />
                                                    <label for="floatingInput">Pets</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <asp:Label runat="server" ID="MinimumPrice" Style="color: rgba(0, 0, 0, 0.7);" Font-Size="X-Large" Text="Starter fra 0,- Kr" />
                                </div>
                                <div class="row">
                                    <asp:Button runat="server" ID="BookButton" CssClass="btn btn-block h-100" data-bs-toggle="modal" data-bs-target="#exampleModal" OnClick="BookButton_Click" OnClientClick="return false;" Text="Vælg plads" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </section>
        <section id="activities" class="p-0">
            <div class="container-fluid p-0">
                <div class="row g-0 popup-gallery">
                    <div class="col-sm-6 col-lg-4">
                        <a class="portfolio-box" href="https://grenaastrandcamping.dk/media/1065/dsc09048.jpg?width=1000&height=600&mode=crop">
                            <img class="img-fluid" src="https://grenaastrandcamping.dk/media/1065/dsc09048.jpg?width=1000&height=600&mode=crop">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded"><span>AKTIVITETER</span></div>
                                    <div class="project-name"><span>Vi tager forbehold for ændringer iht. vejret. sygdom, uforudsete hændelser mm. Aktivitetskalenderen bliver løbende opdateret med nye aktiviteter.…</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <a class="portfolio-box" href="https://grenaastrandcamping.dk/media/1214/dji_0892.jpg?width=1000&height=600&mode=crop">
                            <img class="img-fluid" src="https://grenaastrandcamping.dk/media/1214/dji_0892.jpg?width=1000&height=600&mode=crop">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded"><span>NYE LEGEPLADSER</span></div>
                                    <div class="project-name"><span>Til sæsonen 2020 har vi indkøbt både nye tramboliner, og et kæmpe stort piratskib. Piratskibet skal erstatte den legeplads der var ved grillhytten. Det er et 24 m langt træskib med klatreudfordringer, udsigtskurve i masterne, leg både over og under dæk og meget meget mere.…</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <a class="portfolio-box" href="https://grenaastrandcamping.dk/media/1064/csm__pac0078_94f56cf90b.jpg?width=1000&height=600&mode=crop">
                            <img class="img-fluid" src="https://grenaastrandcamping.dk/media/1064/csm__pac0078_94f56cf90b.jpg?width=1000&height=600&mode=crop">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded"><span>BØRNEHJØRNET</span></div>
                                    <div class="project-name"><span>Børnehjørnet befinder sig i den midterste servicebygning, og byder på lidt af hvert. Her kan man tegne, farvelægge allerede trykte motiver, male på sten, lave perler, spille spil og bare hænge ud med de andre børn på pladsen. Vi kan også finde på at…</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <a class="portfolio-box" href="https://grenaastrandcamping.dk/media/1231/skib.jpg?width=1000&height=600&mode=crop">
                            <img class="img-fluid" src="https://grenaastrandcamping.dk/media/1231/skib.jpg?width=1000&height=600&mode=crop">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded"><span>FOR BØRN</span></div>
                                    <div class="project-name"><span>Grenaa Strand Camping råder over flere legepladser til børn. Den ene legeplads Grenaa Strand Camping har opført, er et kæmpe piratskib på hele 24 meter i længden, flot udført i træ og med mange udfoldelses muligheder i de 3 etagers legeniveauer. Ydermere har pladsen opført…</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <a class="portfolio-box" href="https://grenaastrandcamping.dk/media/1099/csm_p5111052_29c94f4e44.jpg?width=1000&height=600&mode=crop">
                            <img class="img-fluid" src="https://grenaastrandcamping.dk/media/1099/csm_p5111052_29c94f4e44.jpg?width=1000&height=600&mode=crop">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded"><span>PIRATGOLF</span></div>
                                    <div class="project-name"><span>For både de store og små har vi vel nok en af Danmarks smukkeste minigolfbaner. De 18 huller og deres betagende omgivelser er et flot syn med banens opbygning i pirattema. Uanset om man bare spiller minigolf for sjov eller går langt mere seriøst til…</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <a class="portfolio-box" href="https://grenaastrandcamping.dk/media/1121/csm_p6221811_9581660186.jpg?width=1000&height=600&mode=crop">
                            <img class="img-fluid" src="https://grenaastrandcamping.dk/media/1121/csm_p6221811_9581660186.jpg?width=1000&height=600&mode=crop">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded"><span>SWIMMINGPOOL</span></div>
                                    <div class="project-name"><span>Vi er en campingplads med pool for alle vandhunde i hele familien. Vores swimmingpool er en stor og flot pool, hvor alle vores feriegæster kan få sig en dukkert i det krystalblå vand. Vandet opvarmes af et træpillefyr i Kr. Himmelfart, Pinse og skolernes sommerferie.…</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="/js/site.min.js"></script>
</body>
</html>
