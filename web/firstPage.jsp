<%@ page contentType="text/html;charset=GB2312" %>
<%@ page language="java" import="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <body bgcolor="#DCDADA">
     <br><br><br><br><br>
     <c:set var="dateTest" value="<%=new Date()%>"/>
     ����ʱ����:
     <fmt:formatDate value="${dateTest}" pattern="G yyyy'��'MM'��'dd'��' HH:mm:ss z"/>
     <br>
     ��ӭ����ѧ���ɼ�����ϵͳ!<br>
    ��ϵͳר����JSP�����̴ӻ�����ʵ�������ߺͶ���ʹ�ã���Ȩ���У�Υ�߱ؾ���
  </body>
</html>
