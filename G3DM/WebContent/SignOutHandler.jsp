<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="UsersBean" class="org.JGDungeons.FLStudios.bean.UsersBean" scope="session"></jsp:useBean>
<%//session.invalidate();%>
<c:out value="${UsersBean.signedOut }"/>
<c:out value="${UsersBean.username }"/>
<c:out value="${UsersBean.loggedInStatus }"/>

<%response.sendRedirect("SignOut.jsp");%>
