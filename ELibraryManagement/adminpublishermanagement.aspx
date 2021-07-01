<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="ELibraryManagement.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                //selecting the first row as header, fill in datatable
            });
            </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">

             <!--Profile page-->

            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/imgs/publisher.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Publisher Details</h4>
                                       <asp:Label class="badge rounded-pill bg-success" ID="Label1" runat="server" Text="Active"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col"> 
                                <hr />
                            </div>
                        </div>

                        <!--first row-->
                        <div class="row">
                            <div class="col-md-3"> 
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="publisherID" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="goBtn" runat="server" Text="Go" OnClick="goBtn_Click" />
                                
                                    </div>
                                </div>                                
                            </div>

                            <div class="col-md-9"> 
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="publishName" runat="server"  placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>     
                        
                        <!--second row buttons-->
                        <div class="row">
                            <div class="col-md-4 my-2">
                                 <asp:Button class="btn btn-success" ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
                            </div>

                            <div class="col-md-4 my-2">
                                 <asp:Button class="btn btn-warning" ID="updateBtn" runat="server" Text="Update" OnClick="updateBtn_Click" />
                            </div>

                            <div class="col-md-4 my-2">
                                 <asp:Button class="btn btn-danger" ID="delBtn" runat="server" Text="Delete" OnClick="delBtn_Click" />
                            </div>
                        </div>


                </div>
                <div></div>
                <a href="homepage.aspx">Back to Home</a>

            </div>

            </div>

            <!-- books info-->
            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Publisher List</h4>
                                    
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master]"></asp:SqlDataSource>
                            <div class="col"> 
                                <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publish_name" HeaderText="publish_name" SortExpression="publish_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                </div>
            </div>
          </div>
        </div>
    </div>


</asp:Content>
