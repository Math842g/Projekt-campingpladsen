$(document).ready(function () {

    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0');
    var yyyy = today.getFullYear();

    today = dd + '/' + mm + '/' + yyyy;
    var tomorrow = (parseInt(dd) + 1) + '/' + mm + '/' + yyyy;

    $('#date-pick .input-daterange').datepicker({
        format: "dd/mm/yyyy",
        todayBtn: true,
        todayHighlight: true,
        toggleActive: true,
        startDate: today,
    });

    $('input#ArrivalDate').val(today);
    $('input#DepartureDate').val(tomorrow);

    var mymap = L.map('mapid').setView([62, -180], 13);

    L.tileLayer('/Images/camping-site.jpg', {
        attribution: 'Camping site',
        minZoom: 1,
        maxZoom: 1,
        tileSize: L.point(977, 1106),
        bounds: [[0, 0], [100, 100]],
        noWrap: true,
        tms: false,
    }).addTo(mymap);

    var myIcon = L.icon({
        iconUrl: '/Images/marker-icon.png',
        iconSize: [25, 41],
        iconAnchor: [22, 94],
        popupAnchor: [-3, -76],
        shadowUrl: '/Images/marker-shadow.png',
        shadowSize: [41, 41],
        shadowAnchor: [22, 94]
    });

    var marker = L.marker([51.5, -0.09], { icon: myIcon }).addTo(mymap);
});


function updatePeopleText() {
    var adults = $('input[type=number]#adultCount');
    var children = $('input[type=number]#childCount');
    var pets = $('input[type=number]#petCount');

    var text = (adults.val() > 1 ? adults.val() + " Adults" : "1 Adult");

    if (children.val() > 0)
        text += (children.val() > 1 ? ", " + children.val() + " Children" : ", 1 Child");

    if (pets.val() > 0)
        text += (pets.val() > 1 ? ", " + pets.val() + " Pets" : ", 1 Pet");

    $('input[type=text]#peopleText').val(text);
}