<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuestBook.aspx.cs" Inherits="GuestBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            z-index: 1;
            left: 19px;
            top: 713px;
            position: absolute;
            width: 792px;
            height: 80px;
        }
        .auto-style3 {
            height: 37px;
        }
        .auto-style4 {
            z-index: 1;
            left: 91px;
            top: 122px;
            position: absolute;
            height: 13px;
            width: 254px;
        }
        .auto-style5 {
            z-index: 1;
            top: 155px;
            position: absolute;
            height: 7px;
            width: 165px;
            left: 105px;
        }
        .auto-style6 {
            z-index: 1;
            left: 5px;
            top: 123px;
            position: absolute;
            width: 70px;
        }
        .auto-style7 {
            z-index: 1;
            left: 97px;
            top: 40px;
            position: absolute;
            height: 14px;
            width: 247px;
        }
        .auto-style8 {
            z-index: 1;
            left: 94px;
            top: 96px;
            position: absolute;
            width: 298px;
            height: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>&nbsp;Please leave a message at our website&nbsp;&nbsp; </h3>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;<asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ControlToValidate="nameTextBox" Display="Dynamic" ErrorMessage=" Please enter your name" ForeColor="Red" style="z-index: 1; left: 94px; top: 58px; position: absolute; height: 11px; width: 166px" ValidateRequestMode="Enabled" Visible="False"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ControlToValidate="emailTextBox" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Please enter an email address in a valid format" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p style="margin-top: 0px">
                <asp:TextBox ID="emailTextBox" runat="server" style="z-index: 1; left: 94px; top: 79px; position: absolute; height: 15px; width: 247px" TextMode="Email"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="nameTextBox" runat="server" CssClass="auto-style7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="messageRequiredFieldValidator" runat="server" ControlToValidate="messageTextBoc" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Please enter a message!" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="outputLabel" runat="server" CssClass="auto-style2" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Messages:"></asp:Label>
                <asp:Button ID="clearButton" runat="server" OnClick="clearButton_Click" style="z-index: 1; top: 233px; position: absolute; right: 893px; width: 64px; height: 17px; left: 255px" Text="Clear" />
            </p>
        </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 9px; top: 39px; position: absolute; height: 21px; width: 72px; bottom: 325px" Text="Name:"></asp:Label>
        <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click1" style="z-index: 1; left: 151px; top: 232px; position: absolute; height: 17px; width: 71px" Text="Submit" />
        <asp:TextBox ID="messageTextBox" runat="server" CssClass="auto-style4" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 10px; top: 78px; position: absolute" Text="E-mail:"></asp:Label>
        <br />
        <asp:GridView ID="MessageGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MessageID" DataSourceID="guestbookLinqDataSource" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" Height="199px" OnSelectedIndexChanged="MessageGridView_SelectedIndexChanged" Width="579px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Message1" HeaderText="Message" SortExpression="Message1" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:LinqDataSource ID="guestbookLinqDataSource" runat="server" ContextTypeName="GuestBookDataContext" EnableInsert="True" EntityTypeName="" OnSelecting="guestbookLinqDataSource_Selecting" TableName="Messages">
        </asp:LinqDataSource>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="guestbooksqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:GuestBookConnectionString1 %>" OnSelecting="guestbooksqlDataSource_Selecting" SelectCommand="SELECT * FROM [Messages]"></asp:SqlDataSource>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </form>
</body>
</html>
