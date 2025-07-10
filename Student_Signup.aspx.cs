using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindCountryDDl();
            }

        }

        void BindCountryDDl()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from country_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            CountryDropDownList.DataSource = data;
            CountryDropDownList.DataTextField = "country_name";
            CountryDropDownList.DataValueField = "country_id";
            CountryDropDownList.DataBind();
            ListItem selectItem = new ListItem("Select Country", "Select Country");
            selectItem.Selected = true;
            CountryDropDownList.Items.Insert(0,selectItem);
        }


        void BindCityDDl(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from city_tbl where c_id = @country_id";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            CityDropDownList.DataSource = data;
            CityDropDownList.DataTextField = "city_name";
            CityDropDownList.DataValueField = "city_id";
            CityDropDownList.DataBind();
            ListItem selectItem = new ListItem("Select City", "Select City");
            selectItem.Selected = true;
            CityDropDownList.Items.Insert(0, selectItem);
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "INSERT INTO student_signup values(@name,@fname,@surname,@gender,@age,@country,@city,@address,@standard,@goingto,@subject,@contactno,@tutiontype,@tutionprefer,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@fname", FatherNameTextBox.Text);
            cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
            cmd.Parameters.AddWithValue("@fgender", GenderDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
            cmd.Parameters.AddWithValue("@country", CountryDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@city", CityDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
            cmd.Parameters.AddWithValue("@standard", StandardDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@goingto", GoingToDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
            cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
            cmd.Parameters.AddWithValue("@tutiontype", TutionPreferredDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@tutionprefer", TutionPreferredDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('You have registered successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Registration failed..Try another username')</script>");
            }
            con.Close();
        }

        protected void CountryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int country_id = Convert.ToInt32(CountryDropDownList.SelectedValue);
            BindCityDDl(country_id);
        }
    }
}