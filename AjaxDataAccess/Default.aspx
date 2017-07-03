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
        <tr><th>Product Name</th><th>Unit Price</th></tr>
        {{#arr}}
            <tr><td>{{ProductName}}</td><td>{{UnitPrice}}</td></tr>
        {{/arr}}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table id="productListTable" class="table table-striped" style="width:50%">
            <tbody>

            </tbody>
        </table>
    </form>
</body>
</html>
