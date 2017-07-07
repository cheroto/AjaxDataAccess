<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxDataAccess.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/cheroto.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script id="productTemplate" type="text/html">
        <tr>
            <th class="text-left">Product Name</th>
            <th class="text-right">Unit Price</th>
        </tr>
        {{#arr}}
            <tr>
                <td class="text-left">{{ProductName}}</td>
                <td class="text-right">${{UnitPrice}}</td><td><button type="button" class="btn btn-delete btn-default" value="{{ProductID}}">Delete</button></td>
            </tr>
        {{/arr}}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table table-bordered" style="width: 50%; margin: auto">
                <tr>
                    <th colspan="2" style="text-align: center;">Add Product</th>
                </tr>
                <tr>
                    <td>Product Name  
                    </td>
                    <td>
                        <input type="text" id="txtProductName" />
                    </td>
                </tr>
                <tr>
                    <td>Unit Price  
                    </td>
                    <td>
                        <input type="text" id="txtUnitPrice" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <button id="btnSave">Add</button>
                        <input type="text" id="txtProductID" />

                        <button type="button" id="btnDelete">Delete</button>
                    </td>
                </tr>
            </table>
            <div class="alert alert-success" id="success-alert" style="width:50%; text-align:center; margin:auto;">
            </div>
            <table id="ProductListTable" class="table table-striped table-bordered" style="width: 50%; margin: auto;">
                <tbody>
                </tbody>
            </table>
        </div>
        <br />
        <br />
    </form>
</body>
</html>
