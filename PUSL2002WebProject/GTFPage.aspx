<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GTFPage.aspx.cs" Inherits="PUSL2002WebProject.GTFPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome To the Green Task Force<br />
            <br />
            Annalyze the Incident<br />
            <div style="width: 433px; height: 325px; margin-top: 0px">
                <a href ="http://localhost:3424/Home/Index "> Home Page</a><br />
                <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="false" DataKeyNames="ID" 
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
    >
                   
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
    <Columns>

        <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label Text='<%#Eval("Description") %>' runat="server"/>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtDescription" Text='<%#Eval("Description") %>' runat="server"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtDescriptionFooter" runat="server"/>
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="type">
            <ItemTemplate>
                <asp:Label Text='<%#Eval("type") %>' runat="server"/>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txttype" Text='<%#Eval("type") %>' runat="server"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txttype" runat="server"/>
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ImageUrl="~/image/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                <asp:ImageButton ImageUrl="~/image/Delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>

            </ItemTemplate>
            <EditItemTemplate>
                <asp:ImageButton ImageUrl="~/image/save.png" runat="server" CommandName="Save" ToolTip="Save" Width="20px" Height="20px"/>
                <asp:ImageButton ImageUrl="~/image/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
            </EditItemTemplate>
            <FooterTemplate>
                 <asp:ImageButton ImageUrl="~/image/add.png" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px"/>
            </FooterTemplate>
        </asp:TemplateField>

    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
