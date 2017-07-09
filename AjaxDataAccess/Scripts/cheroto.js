$(document).ready(function () {
    $("#success-alert").hide();

    //Ajax call to add product to database
    function AddProduct() {

        var prod = {};
        prod.ProductName = $("#txtProductName").val();
        prod.UnitPrice = parseFloat($("#txtUnitPrice").val());
        console.log(prod.ProductName);
        console.log(prod.UnitPrice);

        $.ajax({
            url: "/api/product/add",
            type: "Post",
            data: prod,
            dataType: "json",
            success: function () {

                console.log(prod);
                Replot();
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

    //Add onclick delete function to delete buttons
    $(document).on("click", ".btn-delete", function () {
        DeleteProduct(this);
    });

    //Ajax call to delete product from database
    function DeleteProduct(button) {

        var prod = {};
        console.log(button);
        prod.ProductID = $(button).val();

        $.ajax({
            url: "/api/product/delete",
            type: "POST",
            data: prod,
            //data: "{id:"+prod.ProductID+"}",  
            datatype: "json",
            success: function () {

                console.log(prod);
                Replot();
                console.log("deleted data!");
                $("#success-alert").html('<strong>Success! </strong>product has been deleted!');
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

    //Add onclick function to update button
    $(document).on("click", ".btn-update", function()
    {
        $("#updateProductID").val($(this).val());
        var name = $(this).closest('td').prev('td').prev('td').text();
        $("#newProductName").val(name);
        var price = $(this).closest('td').prev('td').text().substring(1);
        $("#newUnitPrice").val(price);

    });
    $("#updateProduct").click(function ()
    {
        prod = {};
        prod.ProductID = $("#updateProductID").val();
        prod.ProductName = $("#newProductName").val();
        prod.UnitPrice = $("#newUnitPrice").val();
        UpdateProduct(prod);
        console.log($("updateProductName").val());
        console.log($("updateUnitPrice").val());
    })

    //Ajax call to update product in database
    function UpdateProduct(prod) {

        //var prod = {};
        //prod.ProductID = 1108;
        //prod.ProductName = "Abelha Feliz Modified";
        //prod.UnitPrice = 150;
        //console.log(button);
        //prod.ProductID = $(button).val();

        $.ajax({
            url: "/api/product/update",
            type: "POST",
            data: prod,
            //data: "{id:"+prod.ProductID+"}",  
            datatype: "json",
            success: function () {

                console.log(prod);
                Replot();
                console.log("deleted data!");
                $("#success-alert").html('<strong>Success! </strong>product has been updated!');
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

    //Replot product list
    function Replot() {
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
    $("#btnDelete").click(function (e) {

        DeleteProduct();
        e.preventDefault();

    }); 
    Replot();
})