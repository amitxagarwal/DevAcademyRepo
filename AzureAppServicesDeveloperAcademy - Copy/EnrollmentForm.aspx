<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollmentForm.aspx.cs" Inherits="AzureAppServicesDeveloperAcademy.EnrollmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            height: 100%;
            
        }

        .button {
            height: 100px;
            width: 100px;
            border-radius: 100%;
            background-color: #C91826;
            color: #fff;
            font-weight: bold;
            font-size: 40px;
            text-decoration: none;
            text-align: center;
            text-shadow: 0px -1px 0px rgba(0,0,0,0.5);
          
            margin-top: 30px;
            margin-bottom: 40px;
            margin-right: auto;
            border: 1px solid;
            border-color: #B21522;
            border-radius: 100%;
            -moz-border-radius: 100%;
            -webkit-border-radius: 100%;
            border-style: double;
            cursor: pointer;
        }
        .auto-style3 {
            height: 200px;
            width: 200px;
            border-radius: 100%;
            background-color: #C91826;
            color: #fff;
            font-weight: bold;
            font-size: 40px;
            text-decoration: none;
            text-align: center;
            text-shadow: 0px -1px 0px rgba(0,0,0,0.5);
            margin-top: 30px;
            margin-bottom: 40px;
            margin-right: auto;
            border: 1px double #B21522;
            border-radius: 100%;
            -moz-border-radius: 100%;
            -webkit-border-radius: 100%;
            cursor: pointer;
            margin-left: 0px;
        }
        .auto-style4 {
            width: 527px;
            margin-left:35%;
        }
    </style>

</head>
<body style="height: 100%; width: 100%;background-image:url(Images/collage5.PNG);" ">
    <form id="enrollmentform" runat="server">
    
<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <br />
        <div class="auto-style1" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="background-image:none;background-color:white;border-style:hidden;" class="auto-style4" >
                &nbsp;&nbsp;
                <table style="margin-left:20%;">
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label runat="server" ID="lblName" Text="Enter Full Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Label runat="server" ID="lblmsg"  Visible="False" Font-Bold="True" Font-Size="XX-Large"></asp:Label></td>
                        <td>
                            
                            <asp:Label runat="server" ID="lblEmail" Text="Enter Email ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtEmailId"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    
                </table>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnRegister" runat="server" Text="Register" Font-Size="XX-Large" Height="146px" CssClass="auto-style3" OnClick="btnRegister_Click" />

                         
            </div>
        </div>

    </form>
       
   
       
</body>
</html>
