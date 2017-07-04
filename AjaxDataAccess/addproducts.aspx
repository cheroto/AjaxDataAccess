<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproducts.aspx.cs" Inherits="AjaxDataAccess.addproducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/mustache.js"></script>

    <script src="Scripts/cheroto.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <table>
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
                <td></td>
                <td>
                    <button id="btnSave">Submit</button>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
