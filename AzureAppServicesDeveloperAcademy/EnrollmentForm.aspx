<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollmentForm.aspx.cs" Inherits="AzureAppServicesDeveloperAcademy.EnrollmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style type="text/css">
        .buttonclass{
            margin-left:39%;
            font-family:Calibri;
            Width:9% ;
        }
        .auto-style1 {
            height: 100%;
            width:100%;
        }
        .auto-style2 {
           width: 25%;
            height: 10%;
             margin-left:3%;
        }
        .auto-style4 {
            width: 20%;
            height: 10%;
            margin-left:7%;
        }
        .auto-style5 {
            width: 25%;
            height: 10%;
            margin-left:12%;
        }
        .auto-style6 {
            width: 20%;
            height: 10%;
            margin-left:12%;
        }
        .image1class{
            margin-left:7%
        }
        .image2class{
            margin-left:16%
        }
        
        .image4class{
            margin-left:7%
        }
        .image5class{
            margin-left:7%
        }
        .image6class{
            margin-left:7%
        }
        .myLevel{
            font-family:Calibri;

        }
    </style>


</head>
<body style="height: 100%; width: 100%;">
    <form id="enrollmentform" runat="server" class="auto-style1">
    
        
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/8.jpg" Height="10%" Width="15%" CssClass="image1class" />
        <img class="auto-style6" src="Images/1.png" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/4.jpg" Height="10%" Width="25%" CssClass="image2class"/>

                <br />
    

                <table style="margin-left:35%;">
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Label runat="server" ID="lblName" Text="Full Name" CssClass="myLevel" ></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtName" ></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        
                        <td><asp:Label runat="server" ID="lblmsg"  Visible="False" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                        <td>
                            
                            <asp:Label runat="server" ID="lblEmail" Text="Email ID" CssClass="myLevel" ></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtEmailId"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailId" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailId" ErrorMessage="Enter Email Id" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    
                </table>

&nbsp;&nbsp;

<asp:Button ID="btnRegister" runat="server" Text="Register" Font-Size="X-Large" Height="15%" OnClick="btnRegister_Click" CssClass="buttonclass"/>

                         
            

        <br />
        <br />
        <br />
 <img class="auto-style2" src="Images/9.png"/>
        <img class="auto-style4" src="Images/5.png" />
        <img class="auto-style5" src="Images/6.png" /></form>
       
   
       
</body>
</html>
