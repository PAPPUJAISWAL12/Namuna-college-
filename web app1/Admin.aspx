<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="web_app1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="namuna1.css"/>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
</head>
<body >
    
    <form id="form1" runat="server">
        <div class="container">
            <br /><br /> <br />
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 active">
                      <div class="form-group">
                        <h1> <i class="fa fa-2x fa-user-circle "></i><br />Sign In</h1>
                        <label for="email">User ID:</label> 
                            <input runat="server" type="text" class="form-control" id="userid" placeholder="Enter Your Email Address Or Phone Number" name="email" />
                        </div>
                        <div class="form-group">
                            <label for="pwd" class="a">Password:</label>
                            <input runat="server" type="password" class="form-control" id="pwd" placeholder="Enter Your Password" name="pwd" />
                        <input type="checkbox" onclick="myFunction()" />Show Password
                            <script>
                                function myFunction()
                                {
                                      var x = document.getElementById("pwd");
                                      if (x.type === "password")
                                      {
                                           x.type = "text";
                                      }
                                      else
                                      {
                                          x.type = "password";
                                      }
                                }
                            </script>
                        </div>
                        <div class="checkbox"> 
                            <label><input id="chkRemember" runat="server" type="checkbox" name="remember"/>Remember</label>
                        </div>                
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>

                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BcaConnectionString %>" SelectCommand="SELECT * FROM [UserList]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
         <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </form>

</body>
</html>
