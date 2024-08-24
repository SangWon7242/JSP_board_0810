<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  String pageTitle = "게시물 작성";
  request.setAttribute("pageTitle", pageTitle);
%>

<%@ include file="../common/head.jspf" %>

<script>
  function ArticleSave__submitForm(form) {
    form.subject.value = form.subject.value.trim();

    if(form.subject.value.length == 0) {
      alert('제목을 입력해주세요.');
      form.subject.focus();
      return;
    }

    form.content.value = form.content.value.trim();

    if(form.content.value.length == 0) {
      alert('내용을 입력해주세요.');
      form.content.focus();
      return;
    }

    form.submit();
  }
</script>

<section class="article-write-wrap mt-[10px]">
  <div class="container mx-auto">
    <form method="POST" onsubmit="ArticleSave__submitForm(this); return false;">
      <div>
        <span class="badge badge-primary badge-outline">제목</span>
        <div class="mt-2">
          <input class="input input-bordered w-full" name="subject" type="text" placeholder="제목을 입력해주세요." maxlength="50">
        </div>
      </div>

      <div class="mt-2">
        <span class="badge badge-secondary badge-outline">내용</span>
        <div class="mt-2">
          <textarea class="textarea textarea-bordered w-full" name="content" cols="30" rows="10" placeholder="내용을 입력해주세요."></textarea>
        </div>
      </div>

      <div class="btn-group mt-3 flex gap-x-3">
        <button type="submit" class="btn btn-primary">작성</button>
        <a href="/usr/article/list" class="btn btn-secondary">취소</a>
      </div>
    </form>
  </div>
</section>

<%@ include file="../common/foot.jspf" %>