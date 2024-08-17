<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.stream.IntStream" %>

<%@ page import="sbs.com.jsp.board.article.Article" %>

<%
List<Article> articles = (List<Article>) request.getAttribute("articles");
%>

<!-- daisy UI 불러오기 -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.10/dist/full.min.css" rel="stylesheet" type="text/css" />
<!-- 테일윈드 불러오기 -->
<script src="https://cdn.tailwindcss.com"></script>

<section class="article-list-wrap">
  <div class="container mx-auto">
    <h1 class="font-bold text-lg">게시물 리스트</h1>
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
            </tr>
            <% } %>
        </tbody>
      </table>
    </div>
  </div>
</section>