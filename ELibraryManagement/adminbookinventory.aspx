<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibraryManagement.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">

            <!--Profile page-->

            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Book Details</h4>
                                    <img width="100px" src="images/imgs/books1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%-- file uploading --%>
                        <div class="row">
                            <div class="col">

                                <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <!--first row-->
                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton2" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--second row-->
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Chinese" Value="Chinese" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="Japanese" Value="Japanese" />
                                        <asp:ListItem Text="German" Value="German" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="CPublisher 2" Value="Publisher 2" />
                                        <asp:ListItem Text="FPublisher 3" Value="Publisher 3" />
                                        <asp:ListItem Text="JPublisher 4" Value="Publisher 4" />
                                        <asp:ListItem Text="Publisher 5" Value="Publisher 5" />
                                    </asp:DropDownList>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Author 1" Value="Author 1" />
                                        <asp:ListItem Text="Author 2" Value="Author 2" />
                                        <asp:ListItem Text="Author 3" Value="Author 3" />
                                        <asp:ListItem Text="Author 4" Value="Author 4" />
                                        <asp:ListItem Text="Author 5" Value="Author 5" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" TextMode="Date"></asp:TextBox>            
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Genere</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Self-motivation" Value="Self-motivation" />
                                        <asp:ListItem Text="Business" Value="Business" />
                                        <asp:ListItem Text="Finance" Value="Finance" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                    </asp:ListBox>
                                </div>
                            </div>

                        </div>
                   

                        <!--third row-->
                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Price</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </div>
                        
                        <!--fourth row-->
                        <div class="row">
                            <div class="col-md-4">
                                <label>In Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issue Books</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="" ReadOnly="true" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <!--fifth row-->
                        <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="" TextMode="MultiLine" ></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--fifth row buttons-->
                        <div class="row" >
                            <div class="col-4">
                                <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Add" />
                            </div>

                            <div class="col-4">
                                <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Update" />
                            </div>

                            <div class="col-4">
                                <asp:Button class="btn btn-danger" ID="Button4" runat="server" Text="Delete" />
                            </div>
                        </div>

                    </div>
                    <div>
                    <a href="homepage.aspx"> Back to Home</a>
                    </div>
                </div>

            </div>

            <!-- books info-->
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>                             
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <!-- backend table-->
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
