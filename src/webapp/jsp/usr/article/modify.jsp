<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="sbs.com.jsp.board.article.Article" %>

<%
Article article = (Article) request.getAttribute("article");
%>

<!-- daisy UI 불러오기 -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.10/dist/full.min.css" rel="stylesheet" type="text/css" />
<!-- 테일윈드 불러오기 -->
<script src="https://cdn.tailwindcss.com"></script>

<h1>게시물 수정</h1>

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

<form method="POST" onsubmit="ArticleSave__submitForm(this); return false;" class="flex flex-col gap-y-3">
  <div>
    <span class="badge badge-primary badge-outline">제목</span>
    <div class="mt-2">
      <input class="input input-bordered w-full max-w-xs" name="subject" type="text" placeholder="제목을 입력해주세요." maxlength="50" value="<%=article.getSubject()%>">
    </div>
  </div>

  <div>
    <span  class="badge badge-secondary badge-outline">내용</span>
    <div class="mt-2">
      <textarea class="textarea textarea-bordered w-full max-w-xs" name="content" cols="30" rows="10" placeholder="내용을 입력해주세요."><%=article.getContent()%></textarea>
    </div>
  </div>

  <div class="btn-group mt-3 flex gap-x-3">
    <button type="submit" class="btn btn-primary">수정</button>
    <a href="/usr/article/list" class="btn btn-secondary">취소</a>
  </div>
</form>
