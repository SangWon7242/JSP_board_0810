package sbs.com.jsp.board.container;

import sbs.com.jsp.board.Member.MemberController;
import sbs.com.jsp.board.article.ArticleController;

public class Container {
  public static MemberController memberController;
  public static ArticleController articleContrller;

  static {
    memberController = new MemberController();
    articleContrller = new ArticleController();
  }
}
