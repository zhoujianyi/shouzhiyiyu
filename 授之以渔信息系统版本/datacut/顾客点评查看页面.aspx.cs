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
    public partial class 顾客点评查看页面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }

        static int pagenum = 0;
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();//重新绑定一遍数据
            pagenum = e.NewPageIndex;
        }

        private void Bind()
        {
            DataTable dt = new DataTable();
            DAO dao = new DAO();
            SqlConnection connection = dao.getConnection();
            SqlCommand com = connection.CreateCommand();
            //com.CommandText = "select a.刀具ID,c.MaterialSort,d.ToolTypeName,b.ToolMakerName,a.ToothNum,e.ToolClamp,a.SlackLength,a.EDGEDIAM,a.Others from Tool a left join ToolMaker b on a.ToolMakerID=b.ToolMakerID left join ToolMaterial c on a.ToolMaterialID=c.ToolMaterialID left join ToolType d on a.ToolTypeID=d.ToolTypeID left join ToolClamping e on a.ToolClamID=e.ToolClamID order by a.toolid";
            com.CommandText = "select a.name,b.field,c.advice,c.date from staff a left join advice c on a.ID= c.senderid left join fish b on b.id=c.fishid order by a.name";
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            connection.Close();
            connection.Dispose();
        }

          
    }
}