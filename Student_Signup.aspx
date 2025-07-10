<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
       <div class="container main-container" style="margin-top: 60px;">
        <div class="card shadow-lg">
            <div class="jumbotron bg-primary text-white text-center py-3 mb-0 rounded-0">
                <h2 class="h4 mb-0">Student SignUp</h2>
            </div>
            <div class="card-body">
    <div class="row">
        <!-- Column 1 -->
        <div class="col-md-6">
            <asp:TextBox ID="NameTextBox" CssClass="form-control mb-1" placeholder="Enter Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="NameValidator" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="FatherNameTextBox" CssClass="form-control mb-1" placeholder="Enter Father Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="FatherNameValidator" runat="server" ErrorMessage="Father Name is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="SurnameTextBox" CssClass="form-control mb-1" placeholder="Enter Surname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="SurnameValidator" runat="server" ErrorMessage="Surname is required"></asp:RequiredFieldValidator>
            <br />

            <asp:DropDownList ID="GenderDropDownList" CssClass="form-control mb-1" runat="server">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Transgender</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="GenderDropDownList" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="GenderValidator" InitialValue="Select Gender" runat="server" ErrorMessage="Gender is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="AgeTextBox" CssClass="form-control mb-1" placeholder="Enter Age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="AgeValidator" runat="server" ErrorMessage="Age is required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Age should be within 5 to 60" MaximumValue="60" MinimumValue="5" Type="Integer"></asp:RangeValidator>
            <br />

             <asp:DropDownList ID="CountryDropDownList" CssClass="form-control mb-1" runat="server" OnSelectedIndexChanged="CountryDropDownList_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="CountryDropDownList" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="RequiredFieldValidator1" runat="server" InitialValue="Select Country" ErrorMessage="Country is required"></asp:RequiredFieldValidator>
            <br />
           <asp:DropDownList ID="CityDropDownList" CssClass="form-control mb-1" runat="server">
               <asp:ListItem Text="Select City" Value="" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="CityDropDownList" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="RequiredFieldValidator2" InitialValue="Select City" runat="server" ErrorMessage="City is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" CssClass="form-control mb-1" Rows="3" placeholder="Enter Address" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="AddressValidator" runat="server" ErrorMessage="Address is required"></asp:RequiredFieldValidator>
        </div>

        <!-- Column 2 -->
        <div class="col-md-6">
            <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control mb-1" runat="server">
                <asp:ListItem>Going To</asp:ListItem>
                <asp:ListItem>University</asp:ListItem>
                <asp:ListItem>College</asp:ListItem>
                <asp:ListItem>School</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="GoingToDropDownList" InitialValue="Going To" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="GoingToValidator" runat="server" ErrorMessage="Please select an option for 'Going To'"></asp:RequiredFieldValidator>
            <br />

            <asp:DropDownList ID="StandardDropDownList" CssClass="form-control mb-1" runat="server">
                <asp:ListItem>Standard</asp:ListItem>
                <asp:ListItem>1st</asp:ListItem>
                <asp:ListItem>2nd</asp:ListItem>
                <asp:ListItem>3rd</asp:ListItem>
                <asp:ListItem>4th</asp:ListItem>
                <asp:ListItem>5th</asp:ListItem>
                <asp:ListItem>6th - 12th</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="StandardDropDownList" InitialValue="Standard" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="StandardValidator" runat="server" ErrorMessage="Standard is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="SubjectTextBox" CssClass="form-control mb-1" placeholder="Enter Subject(s)" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="SubjectValidator" runat="server" ErrorMessage="Subject is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="ContactTextBox" CssClass="form-control mb-1" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="ContactValidator" runat="server" ErrorMessage="Contact number is required"></asp:RequiredFieldValidator>
            <br />

            <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control mb-1" runat="server">
                <asp:ListItem>Tution Type</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
                <asp:ListItem>Offline</asp:ListItem>
                <asp:ListItem>Home Tution</asp:ListItem>
                <asp:ListItem>Group Tution</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="TutionTypeDropDownList" InitialValue="Tution Type" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="TutionTypeValidator" runat="server" ErrorMessage="Tution type is required"></asp:RequiredFieldValidator>
            <br />

            <asp:DropDownList ID="TutionPreferredDropDownList" CssClass="form-control mb-1" runat="server">
                <asp:ListItem>Preferred Time</asp:ListItem>
                <asp:ListItem>Morning</asp:ListItem>
                <asp:ListItem>Afternoon</asp:ListItem>
                <asp:ListItem>Evening</asp:ListItem>
                <asp:ListItem>Weekend</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="TutionPreferredDropDownList" InitialValue="Preferred Time" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="TutionPreferredValidator" runat="server" ErrorMessage="Preferred time is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="UsernameTextBox" CssClass="form-control mb-1" placeholder="Enter Username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="UsernameValidator" runat="server" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="PasswordTextBox" CssClass="form-control mb-1" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="PasswordValidator" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please Enter Strong Password" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" runat="server"></asp:RegularExpressionValidator>
            <br />

            <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control mb-1" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                ID="ConfirmPasswordValidator" runat="server" ErrorMessage="Confirm Password is required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" runat="server"  ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Both password must be identical"></asp:CompareValidator>
        </div>
    </div>

    <!-- Submit Button -->
    <div class="row">
        <div class="col-md-12 mt-3">
            <asp:Button ID="SubmitBtn" OnClick="SubmitBtn_Click" runat="server" Text="Register" CssClass="btn btn-primary btn-block" />
        </div>
    </div>
</div>

        </div>
    </div>
</asp:Content>
