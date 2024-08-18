<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
        <span>제목</span>
        <div>
          <input name="subject" type="text" placeholder="제목을 입력해주세요." maxlength="50">
        </div>
      </div>

      <div>
        <span>내용</span>
        <div>
          <textarea name="content" cols="30" rows="10" placeholder="내용을 입력해주세요."></textarea>
        </div>
      </div>

      <div>
        <div>
          <button type="submit">작성</button>
        </div>
      </div>
    </form>
  </div>
</section>

<%@ include file="../common/foot.jspf" %>