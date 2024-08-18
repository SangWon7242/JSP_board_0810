<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  String pageTitle = "게시물 상세보기";
  request.setAttribute("pageTitle", pageTitle);
%>

<%@ include file="../common/head.jspf" %>

<section class="article-detail-wrap mt-[10px]">
  <div class="container mx-auto">
    <div>
      <div>
        ID : ${article.id}
      </div>
      <div>
        SUBJECT : ${article.subject}
      </div>
      <div>
        CONTENT : ${article.content}
      </div>
    </div>

    <div>
      <a href="/usr/article/list">리스트로 이동</a>
    </div>
  </div>
</section>

<%@ include file="../common/foot.jspf" %>