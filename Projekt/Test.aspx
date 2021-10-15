<%@ Page Title="Test" Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Campingplads.Test" %>

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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="/css/site.min.css">
</head>
<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="57">
    <form runat="server">
        <div class="container">
            <asp:Button ClassName="btn btn-primary" runat="server" data-bs-toggle="modal" data-bs-target="#exampleModal" OnClick="PerformModalClick" OnClientClick="return false;" Text="Launch demo modal" />

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
            <div id="date-pick">
                <div class="row input-daterange">
                    <div class="col-auto">
                        <div class="form-floating">
                            <asp:TextBox runat="server" ID="ArrivalDate" class="input-sm form-control date-range no-gray" name="start" ReadOnly="true" />
                            <label for="ArrivalDate">Arrival</label>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="form-floating">
                            <asp:TextBox runat="server" ID="DepartureDate" class="input-sm form-control date-range no-gray" name="end" ReadOnly="true" />
                            <label for="ArrivalDate">Departure</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    Dropdown button
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
  </ul>
</div>
            <div class="dropdown">
                <input type="text" class="form-control text-dropdown no-gray" id="peopleText" data-bs-toggle="dropdown" value="1 Adult" readonly>
                <div class="dropdown-menu" style="width: auto">
                    <div class="container">
                        <div class="form-floating mb-1">
                            <input type="number" class="form-control" id="adultCount" onchange="updatePeopleText()" value="1" min="1" max="10">
                            <label for="floatingInput">Adults</label>
                        </div>
                        <div class="form-floating mb-1">
                            <input type="number" class="form-control" id="childCount" onchange="updatePeopleText()" value="0" min="0" max="10">
                            <label for="floatingInput">Children</label>
                        </div>
                        <div class="form-floating mb-1">
                            <input type="number" class="form-control" id="petCount" onchange="updatePeopleText()" value="0" min="0" max="2">
                            <label for="floatingInput">Pets</label>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="/js/site.min.js"></script>
</body>

</html>
