<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.ResultSet,user.user_operation,
				 java.sql.SQLException"%>
<%//-------�����������------------
  	int sysuser_id=0;
  	int sysuser_role=0;
  	ResultSet rs=null;
	try{
        sysuser_id=Integer.parseInt((String)session.getAttribute("sysuser_id"));
    }catch(Exception e){}
	user_operation uop=new user_operation();
	rs=uop.getUserByPrimKey(sysuser_id);
	String sysuser_name=null;
	int rowCount=0;
	try{
		rs.next();
		rowCount=1;
	}catch(Exception e){}
	if(rowCount!=0){
		sysuser_role=rs.getInt("sysuser_role");
		sysuser_name=rs.getString("sysuser_name");
	}
%>
<html>
<body leftMargin="0" topMargin="0" marginheight="0" marginwidth="0" bgcolor="#DCDADA">
<table border="0" width="90%" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
  	<td>&nbsp;</td>
    <td align="left">��ӭ��:<%=sysuser_name%></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="left">���Ľ�ɫ��
    <%
    if(sysuser_role==1) out.print("ϵͳ����Ա");
    if(sysuser_role==2) out.print("�������Ա");
    if(sysuser_role==3) out.print("��ʦ�û�");
    if(sysuser_role==4) out.print("ѧ���û�");
    %>
    </td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <%if(sysuser_role==1||sysuser_role==2){%>
  <tr>
    <td>&nbsp;</td>
    <td align="left">
    	<font color="#CC6600"><u>�������ݹ���</u></font>
    	<li><a href="classman/class_add.jsp" target="main">�༶��Ϣ����</a></li><br>
        <li><a href="teacherman/teacherman.jsp" target="main">��ʦ��Ϣ����</a></li><br>
        <li><a href="lessionman/lessionman.jsp" target="main">�γ���Ϣ����</a></li><br>
        <li><a href="studentman/studentman.jsp" target="main">ѧ����Ϣ����</a></li> <br>
        <br>
    </td>
  </tr>
  <%}%>
  <%if(sysuser_role==1||sysuser_role==2){%>
  <tr>
    <td>&nbsp;</td>
    <td align="left">
    	<font color="#CC6600"><u>�������</font></u>
    	<li><a href="teachlessionman/teachlessionman.jsp" target="main">��ʦ�ڿ���Ϣ����</a></li><br>
        <li><a href="core/core_sa_pie.jsp" target="main">ѧ���ɼ�����</a></li><br>
        <li><a href="core/core_close.jsp" target="main">ѧ���ɼ����</a></li><br>
        <br>
    </td>
  </tr>
  <%}%>
  <%if(sysuser_role==1||sysuser_role==2||sysuser_role==3){%>
  <tr>
    <td>&nbsp;</td>
    <td align="left">
    	<font color="#CC6600"><u>�ɼ�¼��</font></u>
    	<li><a href="core/core_add.jsp" target="main">ѧ���ɼ�¼��</a></li><br>
    	<br>
    </td>
  </tr>
  <%}%>
  <%if(sysuser_role==1||sysuser_role==2||sysuser_role==3||sysuser_role==4){%>
  <tr>
    <td>&nbsp;</td>
    <td align="left">
    	<font color="#CC6600"><u>�ɼ���ѯ</u></font>
    	<li><a href="core/student_core_view.jsp" target="main">ѧ���ɼ���ѯ</a></li><br>
    	<br>
    </td>
  </tr>
  <%}%>
  <tr>
    <td>&nbsp;</td>
    <td align="left">
    	<font color="#CC6600"><u>ϵͳ����</u></font>
    	<%if(sysuser_role==1){%>
    	<li><a href="user/auto_gen_user.jsp" target="main">�Զ�����ϵͳ�û�</a></li><br>
    	<li><a href="user/hand_gen_user.jsp" target="main">�ֹ�����ϵͳ�û�</a></li><br>
    	<%}%>
    	<%if(sysuser_role==1||sysuser_role==2||sysuser_role==3||sysuser_role==4){%>
    	<li><a href="user/modi_user_pass.jsp?sysuser_id=<%=session.getAttribute("sysuser_id")%>" target="main">�޸ĵ�ǰ�û�����</a></li><br>
    	<%}%>
    	<br>
    </td>
  </tr>
</table>
</body>
</html>