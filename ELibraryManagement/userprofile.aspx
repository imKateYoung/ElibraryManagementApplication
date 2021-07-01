<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ELibraryManagement.userprofile" %>
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
                                    <img width="150px" src="images/imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Your Profile</h4>
                                    <span>Account Status - </span>
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
                            <div class="col-md-6"> 
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID ="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>                                
                            </div>

                            <div class="col-md-6"> 
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>     
                        
                        <!--second row-->
                        <div class="row">
                            <div class="col-md-6"> 
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID ="TextBox3" runat="server" placeholder="Contact Number"></asp:TextBox>
                                </div>                                
                            </div>

                            <div class="col-md-6"> 
                                <label>Email address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"  placeholder="Email address" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!--third row-->
                        <div class="row">
                            <div class="col-md-4"> 
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList  class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                        <asp:ListItem Value="CA">California</asp:ListItem>
                                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                        <asp:ListItem Value="NY">New York</asp:ListItem>
                                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                    </asp:DropDownList>
                                </div>                                
                            </div>

                            <div class="col-md-4"> 
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox5" runat="server"  placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4"> 
                                <label>Zip Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  placeholder="Zip Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>         
                        
                        <!--Fourth row-->
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  placeholder="Full Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <!--Fifth row-->
                        <div class="col">
                            <center>
                                <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                            </center>
                        </div>

                         <!--credentials row-->
                        <div class="row">
                            <div class="col-md-4"> 
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID ="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                </div>                                
                            </div>

                            <div class="col-md-4"> 
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"  placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4"> 
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"  placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!--update btn-->
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                    <div class="form-group d-grid gap-2 ">                                  
                                        <input class=" btn btn-primary btn-block btn-lg" id="Button1" type="button" value="Update" />                                 
                                    </div> 
                                </center>
                            </div>
                        </div>




                </div>

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
                                    <img width="100px" src="images/imgs/books1.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Your Issued Books</h4>
                                    <asp:Label class="badge rounded-pill bg-info" ID="Label2" runat="server" Text="Your books info">Books due</asp:Label>
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




                        <!-- boostrap table-->
                        <!--Books table
                        <table class="table table-striped table-hover">
                          <thead>
                            <tr>
                              <th scope="col">Author ID</th>
                              <th scope="col">Author Name</th>
                              <th scope="col">Due Date</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>a001</td>
                              <td>Joseph Muphy</td>
                              <td></td>
                            </tr>
                            <tr>
                              <td>a002</td>
                              <td>Dale Carnegie</td>
                              <td></td>
                            </tr>
                          </tbody>
                        </table>

                         Books table-->




                </div>
            </div>
          </div>
        </div>
    </div>

</asp:Content>
