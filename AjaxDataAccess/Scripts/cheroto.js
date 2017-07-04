$(document).ready(function () {
    $("#success-alert").hide();
    function AddProduct() {

        var prod = {};
        prod.ProductName = $("#txtProductName").val();
        prod.UnitPrice = parseFloat($("#txtUnitPrice").val());
        console.log(prod.ProductName);
        console.log(prod.UnitPrice);

        $.ajax({
            url: "/api/product/add",
            type: "POST",
            data: prod,
            dataType: "json",
            success: function () {

                console.log(prod);
                Update();
                console.log("Added data!");
                $("#success-alert").html('<strong>Success! </strong>Product has been added!');
                $("#success-alert").fadeTo(2000, 500).slideUp(500, function () {
                    $("#success-alert").slideUp(500);
                });

            },

            error: function () {
                console.log("something went wrong");
                alert("Something terrible has happened!")

            }
        });

    }       

    function Update() {
        $.ajax({
            datatype: "json",
            url: "/api/product/getall",
            success: function (data) {
                var template = $('#productTemplate').html();
                var renderedHTML = Mustache.render(template, { arr: data });
                
                //console.log('Updating!')
                //console.log(data);
                //console.log(template);
                //console.log(renderedHTML);
                $('#ProductListTable tbody').html(renderedHTML);
                CurrencyFormat();
            }
        })
    }
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
    $("#btnSave").click(function (e) {

        AddProduct();
        e.preventDefault();

    }); 
    Update();
})