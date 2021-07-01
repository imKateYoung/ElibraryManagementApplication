<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ELibraryManagement.membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //selecting the first row as header, fill in datatable
        });
    </script>

    <div class="container-fluid">
        <div class="row">

             <!--Profile page-->

            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Member Details</h4>
                                    <img width="100px" src="images/imgs/generaluser.png" />
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
                                <label>Member ID</label>
                                <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="memberID" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="goBtn" runat="server" OnClick="goBtn_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>                           
                                    </div>
                                </div>
                            </div>

                           <div class="col-md-3"> 
                                <label>Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="fullName" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>                               
                                    </div>
                                </div>                                
                            </div>

                            <div class="col-md-6"> 
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID ="accStatus" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                        

                                        <asp:LinkButton class="btn btn-success mr-1" ID="activeBtn" runat="server" Text="Add" OnClick="activeBtn_Click" ></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="pendingBtn" runat="server" Text="Pending" OnClick="pendingBtn_Click" ></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="deactiveBtn" runat="server" Text="Delete" OnClick="deactiveBtn_Click" ></asp:LinkButton>
                                        
                                        
                                        
                                        <%--<asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>--%>
                                                                
                                    </div>
                                </div>                                
                            </div>
                                                    <!--second row buttons-->
<%--                        <div class="row">
                                <div class="col-md-4">
                                 
                                </div>

                                <div class="col-md-4">
                                 
                                </div>

                                <div class="col-md-4">
                                 
                                </div>
                            </div>--%>
                        </div>    
                        
                        <!--second row DOB-->
                        <div class="row">
                            <div class="col-md-3"> 
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="dob" runat="server"  placeholder="" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-4"> 
                                <label>Contact No</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="contactNo" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                
                                    </div>
                                </div>                                
                            </div>


                           <div class="col-md-5"> 
                                <label>Email address</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="emailAddress" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                
                                    </div>
                                </div>                                
                           </div>
                        </div>    


                         <!--third row address-->
                        <div class="row">
                            <div class="col-md-3"> 
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="state" runat="server"  placeholder="" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-4"> 
                                <label>City</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="city" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                
                                    </div>
                                </div>                                
                            </div>
                            <div class="col-md-5"> 
                                <label>Zip Code</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="zipcode" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                
                                    </div>
                                </div>                                
                            </div>
                        </div>   
 



                        <!--fourth row full address-->
                        <div class="row">
                           <div class="col-12"> 
                                <label>Full address</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID ="fullAddress" runat="server" placeholder="Full address" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>                                
                                    </div>
                                </div>                                
                           </div>
                        </div>

                        <!--fifth row buttons-->
                        <div class="row">
                            <div class="col-12">
                                <center>
                                 <asp:Button class="btn btn-lg btn-block btn-danger " ID="delBtn" runat="server" Text="Delete User Permanently" OnClick="delBtn_Click" />
                                 </center>
                            </div>
                        </div>


                </div>
                <div></div>
                <a href="homepage.aspx">Back to Home</a>

            </div>

            </div>

            <!-- books info-->
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>                             
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master]"></asp:SqlDataSource>
                            <div class="col"> 
                                <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact Number" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Emaill Address" SortExpression="email" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="zipcode" HeaderText="Zip Code" SortExpression="zipcode" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
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
