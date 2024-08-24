<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  String pageTitle = "게시물 리스트";
  request.setAttribute("pageTitle", pageTitle);
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
            <c:forEach items="${articles}" var="article">
              <tr>
                <th>${article.id}번</th>
                <th>
                  <a class="hover:underline hover:text-[red]" href="/usr/article/detail/free/${article.id}">
                    ${article.subject}
                  </a>
                </th>
                <th>
                  <a href="/usr/article/modify/free/${article.id}" class="hover:underline hover:text-[red]">수정</a>
                  &nbsp;
                  <a onclick="if(confirm('정말 삭제하시겠습니까?')) $(this).next().submit();" class="hover:underline hover:text-[red] cursor-pointer">삭제</a>
                  <form hidden method="POST" action="/usr/article/delete/free/${article.id}"></form>
                </th>
              </tr>
            </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</section>

<%@ include file="../common/foot.jspf" %>