<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Agarwood.admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <p>
        Add Page</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626502_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Table_1] WHERE [Product ID] = @original_Product_ID AND (([Product Name] = @original_Product_Name) OR ([Product Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product Details] = @original_Product_Details) OR ([Product Details] IS NULL AND @original_Product_Details IS NULL)) AND (([Product Quantity] = @original_Product_Quantity) OR ([Product Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product Price] = @original_Product_Price) OR ([Product Price] IS NULL AND @original_Product_Price IS NULL))" InsertCommand="INSERT INTO [Table_1] ([Product Name], [Product ID], [Product Details], [Product Quantity], [Product Price]) VALUES (@Product_Name, @Product_ID, @Product_Details, @Product_Quantity, @Product_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_1]" UpdateCommand="UPDATE [Table_1] SET [Product Name] = @Product_Name, [Product Details] = @Product_Details, [Product Quantity] = @Product_Quantity, [Product Price] = @Product_Price WHERE [Product ID] = @original_Product_ID AND (([Product Name] = @original_Product_Name) OR ([Product Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product Details] = @original_Product_Details) OR ([Product Details] IS NULL AND @original_Product_Details IS NULL)) AND (([Product Quantity] = @original_Product_Quantity) OR ([Product Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product Price] = @original_Product_Price) OR ([Product Price] IS NULL AND @original_Product_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Details" Type="String" />
                <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Product_Price" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_ID" Type="Int32" />
                <asp:Parameter Name="Product_Details" Type="String" />
                <asp:Parameter Name="Product_Quantity" Type="Int32" />
                <asp:Parameter Name="Product_Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Details" Type="String" />
                <asp:Parameter Name="Product_Quantity" Type="Int32" />
                <asp:Parameter Name="Product_Price" Type="Decimal" />
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Details" Type="String" />
                <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Product_Price" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
