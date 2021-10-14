<%@ Page Title="Index" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Campingplads.Test" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">




    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">At Your Service</h2>
                    <hr class="my-4">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row"></div>
        </div>
    </section>
    <section id="portfolio" class="p-0">
        <div class="container-fluid p-0">
            <div class="row g-0 popup-gallery">
                <div class="col-sm-6 col-lg-4"><a class="portfolio-box"
                        href="assets/img/fullsize/1.jpg?h=f9b3465df27ab0c03ad2ead928dcd277"><img class="img-fluid"
                            src="assets/img/thumbnails/1.jpg?h=56a68e7dda0ccee51a3ee9052291ff82">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"><span>Category</span></div>
                                <div class="project-name"><span>Project Name</span></div>
                            </div>
                        </div>
                    </a></div>
                <div class="col-sm-6 col-lg-4"><a class="portfolio-box"
                        href="assets/img/fullsize/2.jpg?h=360a49604f1ae10f7094cfaeb4d8c473"><img class="img-fluid"
                            src="assets/img/thumbnails/2.jpg?h=13bb24b9c927c681b136f2567e30fbca">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"><span>Category</span></div>
                                <div class="project-name"><span>Project Name</span></div>
                            </div>
                        </div>
                    </a></div>
                <div class="col-sm-6 col-lg-4"><a class="portfolio-box"
                        href="assets/img/fullsize/3.jpg?h=d6098215d39d0388769070c9f6ad33d6"><img class="img-fluid"
                            src="assets/img/thumbnails/3.jpg?h=fc435652d8c9712aef952a590f88ca1f">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"><span>Category</span></div>
                                <div class="project-name"><span>Project Name</span></div>
                            </div>
                        </div>
                    </a></div>
                <div class="col-sm-6 col-lg-4"><a class="portfolio-box"
                        href="assets/img/fullsize/4.jpg?h=d3a7a42dcc1b089b2f17eb6cc3ea4be2"><img class="img-fluid"
                            src="assets/img/thumbnails/4.jpg?h=dd526fbc875cf237b82b503347a6fb3b">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"><span>Category</span></div>
                                <div class="project-name"><span>Project Name</span></div>
                            </div>
                        </div>
                    </a></div>
                <div class="col-sm-6 col-lg-4"><a class="portfolio-box"
                        href="assets/img/fullsize/5.jpg?h=9d1710f81e326a0ea0477045f0e5abb6"><img class="img-fluid"
                            src="assets/img/thumbnails/5.jpg?h=e9a0ccae602ba1211c489fc64bfa72f4">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"><span>Category</span></div>
                                <div class="project-name"><span>Project Name</span></div>
                            </div>
                        </div>
                    </a></div>
                <div class="col-sm-6 col-lg-4"><a class="portfolio-box"
                        href="assets/img/fullsize/6.jpg?h=1edece308118e9a87243d6ea211f86ce"><img class="img-fluid"
                            src="assets/img/thumbnails/6.jpg?h=e69534c0f62e0b0ac301e6832430eaab">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"><span>Category</span></div>
                                <div class="project-name"><span>Project Name</span></div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <script>
        $('#yeet input').datepicker({
            format: "dd/mm/yyyy",
            todayBtn: true,
            todayHighlight: true
        });
    </script>

</asp:Content>

