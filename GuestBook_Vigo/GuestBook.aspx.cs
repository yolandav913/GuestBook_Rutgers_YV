using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
public partial class GuestBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Validate();
            if (IsValid)
            {
                string name = nameTextBox.Text;
                string email = emailTextBox.Text;
                string Message = messageTextBox.Text;

                outputLabel.Text = "Thank you for your submission<br/>";
                //outputLabel.Text += String.Format("Name:{0}{1}E-mail:{2}{1} Phone:{3}", name, "<br/>", email, Message);
                outputLabel.Visible = true;

            }

        }
    }







    protected void submitButton_Click1(object sender, EventArgs e)
    {
        ListDictionary insertParameters = new ListDictionary();
        insertParameters.Add("Date", DateTime.Now.ToShortDateString());
        insertParameters.Add("Name", nameTextBox.Text);
        insertParameters.Add("Email", emailTextBox.Text);
        insertParameters.Add("Message1", messageTextBox.Text);
        guestbookLinqDataSource.Insert(insertParameters);
        nameTextBox.Text = String.Empty;
        emailTextBox.Text = String.Empty;
        messageTextBox.Text = String.Empty;
        MessageGridView.DataBind();

    }


    protected void clearButton_Click(object sender, EventArgs e)
    {
        nameTextBox.Text = String.Empty;
        emailTextBox.Text = String.Empty;
        messageTextBox.Text = String.Empty;
        



    }

    protected void MessageGridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void guestbookLinqDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
    {

    }

    protected void guestbooksqlDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}