<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>教务管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/img/admin.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/img/css.css">
    <script language="JavaScript" type="text/javascript" src="<%=path %>/img/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<table cellSpacing="0" cellPadding="0" width="100%" background="<%=path %>/img/header_bg.jpg" border="0">
  <tr height="56">
    <td><img src="<%=path %>/img/header_left.jpg"></TD>
    <td>
    </td>
    <td align="right"><img src="<%=path %>/img/header_right.jpg"></td>
  </tr>
</table>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
  <tr bgColor=#1c5db6 height=4>
    <td><DIV id=menu_bg>
<DIV id=nav>
<UL>
  <LI class="navbg"><A href="<%=path %>/xuesheng/kecheng_list.jsp">选课管理</A></LI>
  <LI class="navbg"><A href="<%=path %>/xuesheng/tongji.jsp">成绩查看</A></LI>
  <LI class="navbg"><A href="<%=path %>/xuesheng/xuesheng_show.jsp">个人档案</A></LI>
  <LI class="navbg"><A href="<%=path %>/xuesheng/modifypwd.jsp">修改密码</A></LI>
  <LI class="navbg"><A href="<%=path %>/RemoveServlet?mark=admin">注销退出</A></LI>
</UL></DIV></DIV></td>
  </tr>
</table>
</body>
</html>
