$(document).ready(function () {
    var prod = {};
    prod.ProductName = "Happy Day Waterproof Vibrator 1";
    prod.UnitPrice = 355.5;
    $.ajax({
        datatype: "json",
        type:"POST",
        url: "/api/product/add",
        data: prod,
        dataType: "json",
        success: function () {
            console.log("Added Data");
        }
    })
    $.ajax({
        datatype: "json",
        url: "/api/product/getall",
        success: function (data) {
            var template = $('#productTemplate').html();
            var renderedHTML = Mustache.render(template, { arr: data });
            console.log(data);
            //console.log(template);
            //console.log(renderedHTML);
            $('#ProductListTable tbody').append(renderedHTML);
            CurrencyFormat();
        }
    })
    //$('#ProductListTable').on('click', 'tr td:nth-child(2)', CurrencyFormat)
    function CurrencyFormat() {
        $('#ProductListTable tr td:nth-child(2)').each(function () {
            if (this.innerHTML.split('.').length == 1) {
                $(this).append('.00');
            }
            else if ((this.innerHTML.split('.')[1].length == 1)){
                $(this).append('0');
            }
            //console.log(typeof (this.innerHTML));
        })
    }
})