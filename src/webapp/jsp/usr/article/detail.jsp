<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="sbs.com.jsp.board.article.Article" %>

<%
  String pageTitle = "게시물 상세보기";
  request.setAttribute("pageTitle", pageTitle);

  Article article = (Article) request.getAttribute("article");
%>

<%@ include file="../common/head.jspf" %>

<section class="article-detail-wrap mt-[10px]">
  <div class="container mx-auto">
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

    <div>
      <a href="/usr/article/list">리스트로 이동</a>
    </div>
  </div>
</section>

<%@ include file="../common/foot.jspf" %>