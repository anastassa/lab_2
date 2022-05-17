<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="lab_2.Auth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Имя пользователя</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Поле не должно оставаться пустым" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Пароль</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Пароль должен содержать минимум 8 символов, или иметь только допустимые символы: @ # $ %" ValidationExpression="[0-9a-zA-Z@#$%]{8,}" ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
            Подтверждение пароля</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox3" ErrorMessage="Пароли не совпадают" ForeColor="Red"></asp:CompareValidator>
        </p>
        <p>
            Электронная почта</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Неверный формат электронной почты" ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil|ru)" ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
            Возраст</p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Значение должно быть от 18 до 65" MaximumValue="65" MinimumValue="18" Type="Integer" ForeColor="Red"></asp:RangeValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Отправить" />
        </p>
    </form>
</body>
</html>
