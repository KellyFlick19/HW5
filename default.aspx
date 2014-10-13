<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Mike's Mortgage Calculator</h1>
        <hr />

        <br />
        
   
        <br />&nbsp;*Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" style="margin-left: 34px" Width="128px" ></asp:TextBox>
                  
        &nbsp
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please insert a loan amount."></asp:RequiredFieldValidator>
                  
        
                  
        <br /><br />      
        
        *Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" style="margin-left: 0px" Width="128px" ></asp:TextBox>
        &nbsp
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please insert an interest rate."></asp:RequiredFieldValidator>
        
        <br /><br />

        *Loan Term (Yrs):<asp:TextBox ID="tbLoanTerm" runat="server" style="margin-left: 16px" Width="128px" ></asp:TextBox>
        &nbsp
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please insert the loan term."></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        &nbsp
        <asp:Button ID="btnclear" runat="server" Text="Clear" Width="82px" />
        
        <br />
        <br />
&nbsp;* = Required Field<br />

        <% If Not IsPostBack Then%>
            
            <p>Welcome to my mortgage calculator. Please complete the fields above to have your 
                monthly payment and loan repayment schedule calculated for you.
            </p>
        <%Else%>
            
            <br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" BackColor="White" BorderStyle="Solid" BorderColor="Black" CssClass="cssgridview">
            <AlternatingRowStyle BackColor="LightGray" />
            <HeaderStyle BackColor="DarkGray" HorizontalAlign="Center" VerticalAlign="Middle" Height="45px" />
            <RowStyle Height="35px" HorizontalAlign="Center" />

        </asp:GridView>
            
        <%End If%>
        </div>
    </form>
</body>
</html>
