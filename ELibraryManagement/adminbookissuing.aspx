<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibraryManagement.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h4> Book Issuing</h4>
                                    <img width="100px" src="images/imgs/books1.png" />
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
                            <div class="col-md-6"> 
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-6"> 
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Go" />
                                
                                    </div>
                                </div>                                
                            </div>
                        </div>    
                        
                        <!--second row-->
                        <div class="row">
                            <div class="col-md-6"> 
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-6"> 
                                <label>Book Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                
                                    </div>
                                </div>                                
                            </div>
                        </div>    


                         <!--third row-->
                        <div class="row">
                            <div class="col-md-6"> 
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  placeholder="" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-6"> 
                                <label>End Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="TextBox6" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                
                                    </div>
                                </div>                                
                            </div>
                        </div>   
 
                        <!--fourth row buttons-->
                        <div class="row">
                            <div class="col-md-6">
                                 <asp:Button class="btn btn-lg btn-block btn-primary " ID="Button2" runat="server" Text="Issue" />
                            </div>

                            <div class="col-md-6">
                                 <asp:Button class="btn btn-lg btn-block btn-success" ID="Button3" runat="server" Text="Return" />
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
                                    <h4>Issued Book List</h4>                             
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
