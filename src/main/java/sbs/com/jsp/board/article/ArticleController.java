package sbs.com.jsp.board.article;

import sbs.com.jsp.board.Rq;
import sbs.com.jsp.board.container.Container;

import java.util.List;

public class ArticleController {
  private ArticleService articleService;

  public ArticleController() {
    articleService = Container.articleService;
  }

  public void showList(Rq rq) {
    List<Article> articleList = articleService.findAll();

    if(articleList.isEmpty()) {
      rq.print("게시물이 존재하지 않습니다.");
      return;
    }

    rq.setAttr("articles", articleList);

    rq.view("usr/article/list");
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }

  public void doWrite(Rq rq) {
    String subject = rq.getParam("subject", "");

    if(subject.trim().isEmpty()) {
      System.out.println("제목을 입력해주세요.");
      return;
    }

    String content = rq.getParam("content", "");

    if(content.trim().isEmpty()) {
      System.out.println("내용을 입력해주세요.");
      return;
    }

    long id = articleService.write(subject, content);

    rq.replace("/usr/article/detail/free/%d".formatted(id), "%d번 게시물이 등록되었습니다.".formatted(id));
  }

  public void showDetail(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if(id == 0) {
      rq.print("올바른 요청이 아닙니다.");
      return;
    }

    Article article = articleService.findById(id);

    if(article == null) {
      rq.print("%d번 게시물은 존재하지 않습니다.".formatted(id));
      return;
    }

    rq.setAttr("article", article);

    rq.view("usr/article/detail");
  }

  public void doDelete(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if(id == 0) {
      rq.print("번호를 입력해주세요.");
      return;
    }

    Article article = articleService.findById(id);

    if(article == null) {
      rq.print("%d번 게시물은 존재하지 않습니다.".formatted(id));
      return;
    }

    articleService.delete(id);

    rq.replace("/usr/article/list/free", "%d번 게시물이 삭제되었습니다.".formatted(id));
  }

  public void showModify(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if(id == 0) {
      rq.print("번호를 입력해주세요.");
      return;
    }

    Article article = articleService.findById(id);

    if(article == null) {
      rq.print("%d번 게시물은 존재하지 않습니다.".formatted(id));
      return;
    }

    rq.setAttr("article", article);

    rq.view("usr/article/modify");
  }

  public void doModify(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    String subject = rq.getParam("subject", "");

    if(subject.trim().isEmpty()) {
      System.out.println("제목을 입력해주세요.");
      return;
    }

    String content = rq.getParam("content", "");

    if(content.trim().isEmpty()) {
      System.out.println("내용을 입력해주세요.");
      return;
    }

    articleService.modify(id, subject, content);

    rq.replace("/usr/article/detail/free/%d".formatted(id), "%d번 게시물이 수정되었습니다.".formatted(id));
  }
}
