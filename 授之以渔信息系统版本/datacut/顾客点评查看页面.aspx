<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="顾客点评查看页面.aspx.cs" Inherits="datacut.顾客点评查看页面" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>顾客点评查看页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">
		.STYLE4 { FONT-SIZE: small; COLOR: #778899 }
	.STYLE26 { FONT-SIZE: 12px; COLOR: #2f4f4f }
	.STYLE29 { FONT-SIZE: 12px; COLOR: #778899 }
	#Layer1 { Z-INDEX: 1; LEFT: 101px; WIDTH: 107px; POSITION: absolute; TOP: 207px; HEIGHT: 20px }
	BODY { BACKGROUND-COLOR: #f5f5f5 }
	.STYLE34 { COLOR: #f5f5f5 }
	#Layer2 { Z-INDEX: 1; LEFT: 271px; VISIBILITY: hidden; WIDTH: 160px; POSITION: absolute; TOP: 112px; HEIGHT: 53px }
	.STYLE37 { COLOR: #2f4f4f }
	#Layer3 { Z-INDEX: 2; LEFT: 325px; WIDTH: 167px; POSITION: absolute; TOP: 322px; HEIGHT: 162px }
	#Layer4 { Z-INDEX: 2; LEFT: 271px; VISIBILITY: hidden; WIDTH: 163px; POSITION: absolute; TOP: 139px; HEIGHT: 189px }
	A:link { COLOR: #2f4f4f; TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	A:active { TEXT-DECORATION: none }
	#Layer5 { Z-INDEX: 3; LEFT: 271px; VISIBILITY: hidden; WIDTH: 163px; POSITION: absolute; TOP: 163px; HEIGHT: 79px }
	.STYLE40 { FONT-SIZE: x-small; COLOR: #2f4f4f }
	#Layer6 { Z-INDEX: 4; LEFT: 271px; VISIBILITY: hidden; WIDTH: 159px; POSITION: absolute; TOP: 187px; HEIGHT: 100px }
	#Layer7 { Z-INDEX: 5; LEFT: 272px; VISIBILITY: hidden; WIDTH: 165px; POSITION: absolute; TOP: 239px; HEIGHT: 72px }
	#Layer8 { Z-INDEX: 6; LEFT: 272px; VISIBILITY: hidden; WIDTH: 161px; POSITION: absolute; TOP: 266px; HEIGHT: 87px }
	.STYLE41 { FONT-SIZE: xx-large; COLOR: #2f4f4f }
	.STYLE42 { FONT-SIZE: large }
	.STYLE50 { FONT-SIZE: 18px; COLOR: #778899 }
	#bg #form1 table tr td {
	font-weight: bold;
	font-size: 14px;
}
        </style>
		<script type="text/JavaScript">
<!--
		    function MM_findObj(n, d) { //v4.01
		        var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
		            d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
		        }
		        if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
		        for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
		        if (!x && d.getElementById) x = d.getElementById(n); return x;
		    }
		    function MM_showHideLayers() { //v9.0
		        var i, p, v, obj, args = MM_showHideLayers.arguments;
		        for (i = 0; i < (args.length - 2); i += 3)
		            with (document) if (getElementById && ((obj = getElementById(args[i])) != null)) {
		                v = args[i + 2];
		                if (obj.style) { obj = obj.style; v = (v == 'show') ? 'visible' : (v == 'hide') ? 'hidden' : v; }
		                obj.visibility = v;
		            }
		    }
//-->
        </script>
</head>
<body background="images/background.png" >
   
		<P style="text-align: right">
			<script language="JavaScript">
			    var speed = 200 //Delay Between Every word
			    var pause = 1000 //Delay Between EveryLine
			    var timerID = null
			    var bannerRunning = false
			    var ar = new Array()
			    ar[0] = "国产高档数控机床在典型飞机结构件加工中的示范应用"
			    ar[1] = "切削数据库"
			    var currentMessage = 0
			    var offset = 0
			    function stopBanner() {
			        if (bannerRunning)
			            clearTimeout(timerID)
			        bannerRunning = false
			    }
			    function startBanner() {
			        stopBanner()
			        showBanner()
			    }
			    function showBanner() {
			        var text = ar[currentMessage]
			        if (offset < text.length) {
			            if (text.charAt(offset) == " ")
			                offset++
			            var partialMessage = text.substring(0, offset + 1)
			            window.status = partialMessage
			            offset++
			            timerID = setTimeout("showBanner()", speed)
			            bannerRunning = true
			        }
			        else {
			            offset = 0
			            currentMessage++
			            if (currentMessage == ar.length)
			                currentMessage = 0
			            timerID = setTimeout("showBanner()", pause)
			            bannerRunning = true
			        }
			    }
			    startBanner();

                </script>

            <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="false" >
                    <AnonymousTemplate>
                        [ <a href="~/顾客主界面.aspx" ID="A1" runat="server">主页</a> ]
                        [ <a href="~/登录.aspx" ID="HeadLoginStatus" runat="server">退出</a> ]
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        欢迎使用 <span class="bold"><asp:LoginName ID="HeadLoginName" runat="server" /></span>!
                        [ <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="注销" LogoutPageUrl="~/"/> ]
                    </LoggedInTemplate>
                </asp:LoginView>

		    </P>
		<div id="bg" align="center">
			<form id="form2" runat="server">
				<table cellspacing="0" cellpadding="0" width="750" align="center" border="0">
					<tr>
						<td align="middle" align="left" bgcolor="white" colSpan="2">
                            <img src="images/授之以鱼1.jpg" width="880" style="height: 105px"></td>
					</tr>
					<tr>
						<td vAlign="top" width="152" background="images/bg.png" bgColor="#f5f5f5">
							<table cellSpacing="0" cellPadding="0" width="152" align="center" border="0">
								<!--DWLayoutTable-->
								<tr>
									<td class="STYLE26" onmouseover="MM_showHideLayers('Layer2','','show')" onmouseout="MM_showHideLayers('Layer2','','hide')"
										align="center" width="152" background="images/bbt1.png" height="25">
                                        <asp:HyperLink ID="HyperLink1"   NavigateUrl="~/顾客信息查询页面.aspx" runat="server" 
                                            Font-Bold="True" ForeColor="#003366">信息查询</asp:HyperLink></td>
								</tr>
								<tr>
									<td width="152" height="25" align="center" 
										background="images/bbt2.png" class="STYLE26" onmouseover="MM_showHideLayers('Layer4','','show')" onmouseout="MM_showHideLayers('Layer4','','hide')"><asp:HyperLink ID="HyperLink2"   NavigateUrl="~/顾客点评查看页面.aspx" runat="server" 
                                            Font-Bold="True" ForeColor="#003366">点评天地</asp:HyperLink></td>
								</tr>
								<tr>
									<td width="200" height="25" align="center"
										background="images/bbt3.png" class="STYLE26" onmouseover="MM_showHideLayers('Layer5','','show')" onmouseout="MM_showHideLayers('Layer5','','hide')"><asp:HyperLink ID="HyperLink3"   NavigateUrl="~/顾客鱼况查看页面.aspx" runat="server" 
                                            Font-Bold="True" ForeColor="#003366">鱼况查看</asp:HyperLink></td>
								</tr>
								
								
								<tr>
									<td height="30" valign="top"><img src="images/444.png" width="152" height="30" hspace="0" vspace="0"></td>
								</tr>
								<tr>
									<td class="STYLE29" vAlign="middle" align="center" background="images/888.png" bgcolor="#f5f5f5"
										height="223">
										<script>
										    today = new Date();
										    var day;
										    var date;
										    var hello;
										    hour = today.getHours()
										    if (hour < 6) hello = '凌晨好!&nbsp;'
										    else if (hour < 9) hello = '早上好!&nbsp;'
										    else if (hour < 12) hello = '上午好!&nbsp;'
										    else if (hour < 14) hello = '中午好!&nbsp;'
										    else if (hour < 17) hello = '下午好!&nbsp;'
										    else if (hour < 19) hello = '傍晚好!&nbsp;'
										    else if (hour < 22) hello = '晚上好!&nbsp;'
										    else { hello = '午夜好!&nbsp;' }
										    day = today.getDay()
										    if (day == 0) day = '&nbsp;星期日'
										    else if (day == 1) day = '&nbsp;星期一'
										    else if (day == 2) day = '&nbsp;星期二'
										    else if (day == 3) day = '&nbsp;星期三'
										    else if (day == 4) day = '&nbsp;星期四'
										    else if (day == 5) day = '&nbsp;星期五'
										    else if (day == 6) day = '&nbsp;星期六'
										    date = (today.getFullYear()) + '年' + (today.getMonth() + 1) + '月' + today.getDate() + '日';
										    document.write("<strong><font color=#2f4f4f>" + hello + "</font></strong>");
										    document.write('<font color=#2f4f4f>今天是&nbsp;</font>')
										    document.write("<font color=#2f4f4f>" + date + "</font>");
										    document.write("<font color=#2f4f4f>" + day + "</font>");
										</script>
										<div class="STYLE29" align="center">
											<p>&nbsp;</p>
                                            <p>&nbsp;</p>
                                            <p>&nbsp;</p>
                                            <p>&nbsp;</p>
                                            <p>&nbsp;</p>
                                            <p>&nbsp;</p>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
											<P>&nbsp;</P>
										</div>
									</td>
								</tr>
								<tr>
									<td height="30" valign="top"><img src="images/444.png" width="152" height="30" hspace="0" vspace="0" ></td>
								</tr>
							</table>
						</td>
						<td align=center  width="806" bgcolor="#ffffcc"><div id="div1" style="OVERFLOW: auto; WIDTH: 720px" align="center" ><!-- TemplateBeginEditable name="EditRegion1" -->
								<p align="center">
									<table id="Table2" cellspacing="0" cellpadding="0" width="700" border="0">
										<tr>
											<td width="27"><img height="27" src="images/left1.png" width="27"></td>
											<td background="images/top.png"style="font-family: 楷体; text-align: left;" 
                                                class="style1">点评查看</td>
											<td width="27"><img height="27" src="images/right1.png" width="27"></td>
										</tr>
										
										<tr>
											<td background="images/left.png">
                                                <br />
                                                <br />
                                                <br />
                                            </td>
											<td vAlign="top" bgColor="white" height="500" align="left" class="style3">
												<asp:Button ID="Button2" runat="server" Text="系统消息" />
                                                <asp:Button ID="Button3" runat="server" Text="专家消息" />
                                                <asp:Button ID="Button4" runat="server" Text="供应商消息" />
                                                <br />
												<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                                    
                                                    AutoGenerateColumns="False" 
                                                 CellPadding="4" EnableTheming="True" 
                                                 BorderColor="#3366CC" BorderStyle="None" 
                                                 BackColor="White" BorderWidth="1px" PageSize="8" 
                                                     Width="510px" onpageindexchanging="GridView1_PageIndexChanging"  
                                                    >
                                                 <AlternatingRowStyle BorderColor="#000099" BorderStyle="Solid" 
                    BorderWidth="1px" />
                                                    <Columns>
                                                        <asp:BoundField DataField="name" HeaderText="发件人" 
                                                            SortExpression="name" />
                                                        <asp:BoundField DataField="field" HeaderText="fishery" SortExpression="field" />
                                                        <asp:BoundField DataField="advice" HeaderText="建议内容" SortExpression="advice" />
                                                        <asp:BoundField DataField="date" HeaderText="时间" SortExpression="date" />
                                                    </Columns>
                                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                    <SortedDescendingHeaderStyle BackColor="#002876" />
                                                </asp:GridView>
                                                <br />
                                                请输入您的反馈意见：<br />
                                                <br />
                                                <asp:TextBox ID="TextBox1" runat="server" Height="85px" 
                                                     Width="506px" BackColor="#99FF66"></asp:TextBox>
                                                <br />
					                            <asp:Button ID="Button5" runat="server" Text="发送" />
					</tr>
					<tr>
						<td vAlign="top" align="center" background="images/w72.png" bgColor="#f5f5f5" colSpan="2"
							height="50">Copyright@ 北京航空航天大学软件学院.
All Rights Reserved</td>
					</tr>
				</table>
			</form>
		</div>
    
</body>
</html>
