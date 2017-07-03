$(document).ready(function () {
    $.ajax({
        datatype: "json",
        url: "/api/product/getall",
        success: function (data) {
            var template = $('#productTemplate').html();
            var renderedHTML = Mustache.render(template, { arr: data });
            //console.log(template);
            //console.log(renderedHTML);
            $('#productListTable tbody').append(renderedHTML);
        }
    })
    //$(document).on('click', '#productListTable', function () {
    //    $(this).toggleClass('table table-striped');
    //    console.log("Table Changed");
    //})
})