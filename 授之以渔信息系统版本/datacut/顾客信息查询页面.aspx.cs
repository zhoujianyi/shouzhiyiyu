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
    public partial class 顾客信息查询页面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
                dropbind();
            }
        }

        static int pagenum = 0;
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();//重新绑定一遍数据
            pagenum = e.NewPageIndex;
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            dataBind();//重新绑定一遍数据
            pagenum = e.NewPageIndex;
        }

        private void dataBind()
        {
            string s1 = DropDownList1.SelectedValue.ToString();
            string s2 = DropDownList2.SelectedValue.ToString();
            DataTable dt = new DataTable();
            DAO dao = new DAO();
            SqlConnection connection = dao.getConnection();
            SqlCommand com = connection.CreateCommand();
            com.CommandText = "select a.field,c.period,sum(c.mount)as mount from fish a left join record c on a.id=c.fishid where a.field = '" + s1 + "' and c.period = '" + s2 + "'group by a.field ,c.period";
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            connection.Close();
            connection.Dispose();

            if (GridView2.Rows.Count == 0)
            {
                Label1.Visible = true;
            }
            else
                Label1.Visible = false;
        }

        private void Bind()
        {
            DataTable dt = new DataTable();
            DAO dao = new DAO();
            SqlConnection connection = dao.getConnection();
            SqlCommand com = connection.CreateCommand();
            //com.CommandText = "select a.刀具ID,c.MaterialSort,d.ToolTypeName,b.ToolMakerName,a.ToothNum,e.ToolClamp,a.SlackLength,a.EDGEDIAM,a.Others from Tool a left join ToolMaker b on a.ToolMakerID=b.ToolMakerID left join ToolMaterial c on a.ToolMaterialID=c.ToolMaterialID left join ToolType d on a.ToolTypeID=d.ToolTypeID left join ToolClamping e on a.ToolClamID=e.ToolClamID order by a.toolid";
            com.CommandText = "select a.type,a.field,b.name,c.mount,c.date,c.period from fish a left join record c on a.ID=c.fishid left join staff b on b.id=c.userid2 order by a.type";
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            connection.Close();
            connection.Dispose();
        }

        private void dropbind()
        {
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            DataList dl = new DataList();
            DAO dao = new DAO();
            SqlConnection connection = dao.getConnection();
            string sql1 = "select distinct field from fish ";
            //string sql2 = "select 刀具型号 from 刀具列表";
            string sql3 = "select distinct period from record";
            SqlCommand com = connection.CreateCommand();
            com.CommandText = sql1;
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);

            DropDownList1.DataSource = dt;
            DropDownList1.DataValueField = dt.Columns[0].ColumnName;
            DropDownList1.DataTextField = dt.Columns[0].ColumnName;
            

            com.CommandText = sql3;
            da.SelectCommand = com;
            da.Fill(dt2);
            DropDownList2.DataSource = dt2;
            DropDownList2.DataValueField = dt2.Columns[0].ColumnName;
            DropDownList2.DataTextField = dt2.Columns[0].ColumnName;

            //DropDownList1.DataBind();
            DropDownList1.DataBind();
            DropDownList2.DataBind();
            connection.Close();
            connection.Dispose();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            panel1.Visible = true;
            dataBind();
        }
    }
}