<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="util.commonTag"%>
<html>
<head>
<title>ѧ���ɼ�����ϵͳ</title>
</head>
<body bgcolor="#DCDADA">
<table border="0" width="100%" height="173">
  <tr>
    <td height="40">
     &nbsp; </td>
  </tr>
  <tr>
    <td width="100%" height="34">
      <p align="center"><font size="6"><b>ѧ���ɼ�����ϵͳ<font size="4">(Version 1.0)</font></b></font></td> 
  </tr>
  <tr>
    <td width="100%" height="21">
      <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
      ������������JSP�����̴ӻ�����ʵ��������ѧϰʹ�ã���Ȩ���У�Υ�߱ؾ���</td>
  </tr>
</table>
<table align="center" border="0">
   	<tr align="center"><td><font color="red"><html:errors/></font></td></tr>
    <tr align="center"><td>ϵͳ��¼</td></tr>
    <form action="checkLogin.jsp" method="post" focus="sysuser_name">
    <tr><td>�û�����<input type="text" name="sysuser_name"/></td></tr>
    <tr><td>��&nbsp;&nbsp;�룺<input type="password" name="sysuser_password"/></td></tr>
    <tr><td>��&nbsp;ɫ��
    <select name="sysuser_role">
          	<option value="1">ϵͳ����Ա</option>
          	<option value="2">�������Ա</option>
          	<option value="3">��ʦ�û�</option>
          	<option value="4">ѧ���û�</option>
    </select>
    </td></tr>
    <tr><td>��֤�룺<input type="text" name="certCode"/>
    		<img src="makeCertPic.jsp">
    </td></tr>
    <tr align="left"><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="ȷ��"/></td></tr>
    </form>
</table>

</body>
</html>