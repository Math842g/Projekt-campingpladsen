<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Campingplads</title>
    <meta name="description" content="TestDesc">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.2/js/bootstrap.min.js"
        integrity="sha512-HSNvqjhsAxRPvbSBEdXWlkR9uYmJtUvXEyfAvUzlA0uS5SyFZMZdczgz8oPWTz2NUEBaXkIYL4kdrBJkP66jYA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.2/js/bootstrap.min.js"
        integrity="sha512-HSNvqjhsAxRPvbSBEdXWlkR9uYmJtUvXEyfAvUzlA0uS5SyFZMZdczgz8oPWTz2NUEBaXkIYL4kdrBJkP66jYA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
        integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css"
        integrity="sha512-rxThY3LYIfYsVCWPCW9dB0k+e3RZB39f23ylUYTEuZMDrN/vRqLdaCBo/FbvVT6uC2r0ObfPzotsfKF9Qc5W5g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
        integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
    <style>
        .quick-book {
            margin: -75px auto auto auto;
            width: 120vh;
            height: 15vh;
        }

        .quick-book input {
            outline: none;
            border-top: 0px;
            border-left: 0px;
            border-right: 0px;
            border-bottom: 1px solid rgba(0, 0, 0, 0.3);
            border-radius: 0;
            font-size: 16px;
            font-weight: 400;
            margin-bottom: 15px;
        }

        .quick-book input:hover {
            border-bottom: 1px solid rgba(0, 0, 0, 1);
        }

        .quick-book input:active,
        .quick-book input:focus {
            outline: none;
            box-shadow: none;
        }

        .quick-book input:read-only {
            background-color: white;
        }

        .quick-book button {
            width: 100%;
            padding: 15px;
            border-radius: 0px;
            font-size: 16px;
        }

        .quick-book .btn-book {
            border-radius: 2px;
        }

        .quick-book .btn-book:hover,
        .quick-book .btn-book:focus,
        .quick-book .btn-book:active {
            background-color: green !important;
            color: white;
        }
    </style>
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="57">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top">Campingplads</a><button
                data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right"
                type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i
                    class="fa fa-align-justify"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#quick-book">Quick Book</a></li>
                    <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="#portfolio">Portfolio</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white d-flex masthead" style="background-image:url('assets/img/header.jpg');">
        <div class="container my-auto">
            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <h1 class="text-uppercase"><strong>Your Favorite Source of Free Bootstrap Themes</strong></h1>
                    <hr>
                </div>
            </div>
            <div class="col-lg-8 mx-auto">
                <p class="text-faded mb-5">We can help you build better websites using the Bootstrap CSS framework! Just
                    download your template and start going, no strings attached!</p><a class="btn btn-primary btn-xl"
                    role="button" href="#services">Find Out More</a>
            </div>
        </div>
    </header>
    <section id="quick-book"
        class="col col-offset-xl-1 d-none d-xxl-block d-print-block shadow p-3 mb-5 bg-white rounded quick-book">
        <div class="container">
            <div class="quick-book-md mx-auto">
                <form class="row align-items-center justify-content-center">
                    <div class="col-auto">
                        <div class="dropdown">
                            <input type="text" class="form-control" id="autoSizingInput" data-bs-toggle="dropdown"
                                value="1 Adult" readonly>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Link 1</a></li>
                                <li><a class="dropdown-item" href="#">Link 2</a></li>
                                <li><a class="dropdown-item" href="#">Link 3</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="dropdown">
                            <input type="text" class="form-control" id="autoSizingInput" data-bs-toggle="dropdown"
                                value="1 Adult" readonly>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Link 1</a></li>
                                <li><a class="dropdown-item" href="#">Link 2</a></li>
                                <li><a class="dropdown-item" href="#">Link 3</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="dropdown">
                            <input type="text" class="form-control" id="autoSizingInput" data-bs-toggle="dropdown"
                                value="1 Adult" readonly>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Link 1</a></li>
                                <li><a class="dropdown-item" href="#">Link 2</a></li>
                                <li><a class="dropdown-item" href="#">Link 3</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="dropdown">
                            <input type="text" class="form-control" id="autoSizingInput" data-bs-toggle="dropdown"
                                value="1 Adult" readonly>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Link 1</a></li>
                                <li><a class="dropdown-item" href="#">Link 2</a></li>
                                <li><a class="dropdown-item" href="#">Link 3</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="mb-3">
                        <!--<button class="btn btn-book shadow p-3 mb-5 bg-white" id="" type="text" placeholder=""
                            aria-label="">test</button>-->
                        <div id="yeet">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
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
</body>

</html>