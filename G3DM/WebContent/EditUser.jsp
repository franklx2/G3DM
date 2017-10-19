<jsp:useBean id="UsersBean" class="org.JGDungeons.FLStudios.bean.UsersBean" scope="session"></jsp:useBean>
<jsp:setProperty property="targetUsername" name="UsersBean" value="${param.username}"/>
<jsp:setProperty property="about" name="UsersBean" value="${param.about}"></jsp:setProperty>
${UsersBean.about} <br> <!-- 350 -->
${UsersBean.targetUser}
<% response.sendRedirect("Profile.jsp");%>