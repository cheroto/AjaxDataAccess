$(document).ready(function() {
    $.ajax({
        datatype: "json",
        url: "/api/product/getall",
        success: function (data) {
            console.log(data);
        }
    })
})