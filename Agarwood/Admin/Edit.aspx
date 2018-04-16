<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Agarwood.Admins.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                ProductName:&nbsp;<asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                <br />
                ProductDetails:
                <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductImage:
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click2">Save</asp:LinkButton>
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductImage") %>'></asp:Label>
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                ProductDetails:
                <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductImage:
                <asp:Label ID="ProductImageLabel" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductDetails:
                <asp:Label ID="ProductDetailsLabel" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626502_co5027_asgConnectionString3 %>" DeleteCommand="DELETE FROM [view product] WHERE [ProductID] = @original_ProductID AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))" InsertCommand="INSERT INTO [view product] ([ProductImage], [ProductName], [ProductID], [ProductDetails], [ProductQuantity], [ProductPrice]) VALUES (@ProductImage, @ProductName, @ProductID, @ProductDetails, @ProductQuantity, @ProductPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [view product]" UpdateCommand="UPDATE [view product] SET [ProductImage] = @ProductImage, [ProductName] = @ProductName, [ProductDetails] = @ProductDetails, [ProductQuantity] = @ProductQuantity, [ProductPrice] = @ProductPrice WHERE [ProductID] = @original_ProductID AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductImage" Type="String" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetails" Type="String" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductImage" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductDetails" Type="String" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductImage" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetails" Type="String" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductImage" Type="String" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetails" Type="String" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductDetails" HeaderText="ProductDetails" SortExpression="ProductDetails" />
                <asp:BoundField DataField="ProductQuantity" HeaderText="ProductQuantity" SortExpression="ProductQuantity" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="166px" ImageUrl='<%# Eval("ProductImage") %>' Width="162px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" Height="131px" Width="179px" />
            </EmptyDataTemplate>
        </asp:GridView>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
