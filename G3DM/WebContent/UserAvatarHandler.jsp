<jsp:useBean id="UsersBean" class="org.JGDungeons.FLStudios.bean.UsersBean" scope="session"></jsp:useBean>
<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
${requestScope.username} <br>
${requestScope.url}
<jsp:setProperty property="targetUsername" name="UsersBean" value="${requestScope.username}"/>
<jsp:setProperty property="editAvatarUrl" name="UsersBean" value="${requestScope.url}"/>
${UsersBean.username} <br>
${UsersBean.editAvatarUrl}
<% response.sendRedirect("Profile.jsp"); %>