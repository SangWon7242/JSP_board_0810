<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.stream.IntStream" %>

<%@ page import="sbs.com.jsp.board.article.Article" %>

<%
List<Article> articles = (List<Article>) request.getAttribute("articles");
%>

<h1>게시물 리스트</h1>

<ul>
    <% for(int i = articles.size() - 1; i >= 0; i--) {%>
        <% Article article = articles.get(i); %>
        <li>
            <span>
                <%=article.getId()%>번 :
            </span>
            <a href="/usr/article/detail?id=<%=article.getId()%>">
                <%= article.getSubject()%>
            </a>
        </li>
    <% } %>
</ul>