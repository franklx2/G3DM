<jsp:useBean id="UsersBean" class="org.JGDungeons.FLStudios.bean.UsersBean" scope="session"></jsp:useBean>
<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
${requestScope.pc_id} <br>
${requestScope.url}
<jsp:setProperty property="editId" name="CharactersBean" value="${requestScope.pc_id}"/>
<jsp:setProperty property="editAvatarUrl" name="CharactersBean" value="${requestScope.url}"/>
${CharactersBean.editId} <br>
${CharactersBean.editAvatarUrl}
<% response.sendRedirect("Profile.jsp"); %>