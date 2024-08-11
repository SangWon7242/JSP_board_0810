package sbs.com.jsp.board.article;

import sbs.com.jsp.board.Rq;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public class ArticleController {
  public void showList(Rq rq) {
    List<Article> articleList = new ArrayList<>();

    // 테스트 게시물 생성
    /*
    for(int i = 5; i >= 1; i--) {
      articleList.add(new Article(i, "제목" + i, "내용" + i);
    }
     */

    IntStream.rangeClosed(1, 5)
        .map(i -> 6 - i) // 5, 4, 3, 2, 1로 매핑
        .forEach(i -> articleList.add(new Article(i, "제목" + i, "내용" + i))
        );


    rq.setAttr("articles", articleList);

    rq.view("usr/article/list");
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }
}
