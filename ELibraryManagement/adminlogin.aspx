﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Admin Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col"> 
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="adminID" runat="server"  placeholder="Admin ID" OnTextChanged="adminID_TextChanged"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="password" runat="server"  placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group my-2 ">                                  
                                     <asp:Button class="btn btn-primary btn-block btn-lg" ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click" />
                                  
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx">Back to Home</a>


            </div>

        </div>
    </div>

</asp:Content>

