<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS_Project.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
     <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
     <link href="../dist/sweetalert2.min.css" rel="stylesheet">
    <script src="../dist/sweetalert2.min.js"></script>
     <style>
        body, html {
            height: 100%;
        }
    </style>
</head>
<body class="bg-light">
    <form id="form1" runat="server" class="h-100">
        <div class="container h-100">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col-md-6">
                    <div class="card shadow-lg">
                        <div class="jumbotron bg-primary text-white text-center py-4 mb-0 rounded-top">
                            <h2 class="h4 mb-0">Admin Login</h2>
                        </div>
                        <div class="card-body">
                            <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control mb-3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="UsernameTxt" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ID="RequiredFieldValidator_UsernameTxt" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" CssClass="form-control mb-3" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="PasswordTxt" TextMode="password" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ID="RequiredFieldValidator_PasswordTxt" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                            <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" CssClass="btn btn-primary btn-block" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- JS Dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
