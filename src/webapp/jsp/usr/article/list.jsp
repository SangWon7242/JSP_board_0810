<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%@ page import="sbs.com.jsp.board.article.Article" %>

<%
  String pageTitle = "게시물 리스트";
  request.setAttribute("pageTitle", pageTitle);

  List<Article> articles = (List<Article>) request.getAttribute("articles");
%>

<%@ include file="../common/head.jspf" %>

<section class="article-list-wrap mt-[10px]">
  <div class="container mx-auto">
    <div>
      <table class="table text-center">
        <colgroup>
          <col style="width:150px;">
          <col style="width:250px;">
        </colgroup>
        <thead>
          <tr>
            <th>ID</th>
            <th>SUBJECT</th>
            <th>비고</th>
          </tr>
        </thead>
        <tbody>
            <% for(int i = articles.size() - 1; i >= 0; i--) {%>
            <% Article article = articles.get(i); %>
            <tr>
              <th><%=article.getId()%>번</th>
              <th>
                <a class="hover:underline hover:text-[red]" href="/usr/article/detail/free/<%=article.getId()%>">
                  <%= article.getSubject()%>
                </a>
              </th>
              <th>
                <a href="/usr/article/modify/free/<%=article.getId()%>" class="hover:underline hover:text-[red]">수정</a>
                &nbsp;
                <a onclick="if(!confirm('정말 삭제하시겠습니까?')) return false;" href="/usr/article/delete/free/<%=article.getId()%>" class="hover:underline hover:text-[red]">삭제</a>
              </th>
            </tr>
            <% } %>
        </tbody>
      </table>
    </div>
  </div>
</section>

<%@ include file="../common/foot.jspf" %>