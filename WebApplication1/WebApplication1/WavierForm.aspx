<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WavierForm.aspx.cs" Inherits="WebApplication1.WavierForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter your information:<br />
            <br />

            First Name:
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regName" runat="server"
                ControlToValidate="txtFirstName"
                ValidationExpression="^[a-zA-Z'.\s]{1,20}"
                Text="Enter a valid first name" />
            <br />
            <br />
            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"
                ControlToValidate="txtLastName"
                ValidationExpression="^[a-zA-Z'.\s]{1,20}"
                Text="Enter a valid last name" />
            <br />
            <br />
            Phone Number:
            <asp:TextBox runat="server" ID="txtphone" />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Phone number" ControlToValidate="txtphone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
            <br />
            <br />


            Email: &nbsp &nbsp
            <asp:TextBox ID="userEmail" runat="server" Width="180px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="emailValidation" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="userEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            <br />
            <br />

        </div>

        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <p>
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>



