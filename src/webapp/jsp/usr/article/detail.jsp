<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="sbs.com.jsp.board.article.Article" %>

<%
Article article = (Article) request.getAttribute("article");
%>

<h1>게시물 상세보기</h1>

<div>
  <% if(article != null) { %>
    <div>
      ID : <%=article.getId()%>
    </div>
    <div>
      SUBJECT : <%=article.getSubject()%>
    </div>
    <div>
      CONTENT : <%=article.getContent()%>
    </div>
  <% } %>
</div>
