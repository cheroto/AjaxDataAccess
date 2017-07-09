<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxDataAccess.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Scripts/styles.css" rel="stylesheet" />
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
            <th class="text-center">Options</th>
        </tr>
        {{#arr}}
            <tr>
                <td class="text-left">{{ProductName}}</td>
                <td class="text-right">${{UnitPrice}}</td>
                <td class="text-center">
                    <button type="button" class="btn btn-delete btn-default" value="{{ProductID}}">Del</button>
                    <button type="button" class="btn btn-update btn-default" value="{{ProductID}}"
                        data-toggle="modal" data-target="#myModal">
                        Updt</button>
                </td>
            </tr>
        {{/arr}}
    </script>
</head>
<body>
    <br />
    <form id="form1" runat="server">
        <button type="button" id="addButton" class="btn btn-default btn-topRight"
            data-toggle="modal" data-target="#addProductModal">
            Add Product</button>
        <div>
            <!-- Trigger the modal with a button -->
            <!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->
            <!-- Modal -->
            <div id="addProductModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Add Product</h4>
                        </div>
                        <div class="modal-body">
                            <div>Product Name</div>
                            <input type="text" id="txtProductName" value="" />
                            <div>Unit Price</div>
                            <input type="text" id="txtUnitPrice" value="" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" id="btnSave" class="btn btn-default" data-dismiss="modal">Add</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Update Product</h4>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" id="updateProductID" value="" />
                            <div>New Name</div>
                            <input type="text" id="newProductName" value="" />
                            <div>New Price</div>
                            <input type="text" id="newUnitPrice" value="" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" id="updateProduct" class="btn btn-default" data-dismiss="modal">Update</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
            <div class="alert alert-success" id="success-alert" style="width: 50%; text-align: center; margin: auto;">
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
