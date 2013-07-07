using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace datacut
{
    public partial class 顾客鱼况查看页面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropbind();
            }

        }
        private void dropbind()
        {
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            DataList dl = new DataList();
            DAO dao = new DAO();
            SqlConnection connection = dao.getConnection();
            string sql1 = "select field from fish ";
            //string sql2 = "select 刀具型号 from 刀具列表";
           
            SqlCommand com = connection.CreateCommand();
            com.CommandText = sql1;
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);

            DropDownList2.DataSource = dt;
            DropDownList2.DataValueField = dt.Columns[0].ColumnName;
            DropDownList2.DataTextField = dt.Columns[0].ColumnName;
           
            DropDownList2.DataBind();
            connection.Close();
            connection.Dispose();
        }
    }
}