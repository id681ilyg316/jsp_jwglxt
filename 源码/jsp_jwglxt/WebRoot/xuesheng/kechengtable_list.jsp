<%@ page language="java" import="java.util.*,util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/>
<jsp:include flush="true" page="/xuesheng/top.jsp"/>
<%
request.setCharacterEncoding("UTF-8");String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%
ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
if(adminlogin == null || adminlogin.size() == 0){
	%>
<script>alert('您还没有登录!');window.navigate('<%=path %>/index.jsp');</script>
<%
}else{
 %>
</head>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<body>
<table width="1120" border="0" cellspacing="0" cellpadding="0" background="<%=path%>/img/all_bg.jpg">
  <tr>
    <td class="border_left border_right border_bottom" height="400" valign="top" align="center"><table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="5"></td>
        </tr>
      </table>
      <%
          String kechengid = request.getParameter("kechengid");
          ArrayList kecheng = array.getKecheng(kechengid);
          ArrayList client = array.getKechengtable(Integer.parseInt(kechengid));      
       %>
      <table width="98%" border="0" cellspacing="0" cellpadding="0" bgcolor="#999999">
        <tr class="tabletop">
          <td height="25" colspan="12" align="center">课程表</td>
        </tr>
        <tr class="tabletop">
          <td height="25" colspan="12" align="center">课程名称：<%=kecheng.get(1) %></td>
        </tr>
        <tr class="tablemenu">
          <td height="20" align="center">序号</td>
          <td height="20" align="center">上课地点</td>
          <td height="20" align="center">上课时间</td>
          <td height="20" align="center">备注</td>
        </tr>
        <%
          for(int i = 0;i < client.size();i++){
          	ArrayList alRow = (ArrayList)client.get(i);
           %>
        <tr class="tabletd<%=i%2+1 %>">
          <td height="25" align="center"><%=i+1 %></td>
          <td height="25" align="center"><%=alRow.get(2) %></td>
          <td height="25" align="center"><%=alRow.get(3)+""+alRow.get(4)+""+alRow.get(5) %></td>
          <td height="25" align="center"><%=alRow.get(6) %></td>
        </tr>
        <%} %>
        <tr>
          <td align="center" colspan="16" height="40"><style media=print> 
			.Noprint{display:none;}<!--用本样式在打印时隐藏非打印项目--> 
			.PageNext{page-break-after: always;}<!--控制分页--> 
			</style>
            <object id="WebBrowser" width=0 height=0 classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2">
            </object>
            <center class="Noprint" >
              <input type=button value=打印 onclick=document.all.WebBrowser.ExecWB(6,1)>
              <input type=button value=直接打印 onclick=document.all.WebBrowser.ExecWB(6,6)>
              <input type=button value=页面设置 onclick=document.all.WebBrowser.ExecWB(8,1)>
              <input type=button value=打印预览 onclick=document.all.WebBrowser.ExecWB(7,1)>
            </center></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
<jsp:include flush="true" page="/xuesheng/bottom.jsp"/>
</html>
<%} %>
