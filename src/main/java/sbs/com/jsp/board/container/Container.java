package sbs.com.jsp.board.container;

import sbs.com.jsp.board.member.MemberController;
import sbs.com.jsp.board.article.ArticleController;
import sbs.com.jsp.board.article.ArticleRepository;
import sbs.com.jsp.board.article.ArticleService;
import sbs.com.jsp.board.member.MemberRepository;
import sbs.com.jsp.board.member.MemberService;

public class Container {
  public static MemberRepository memberRepository;
  public static ArticleRepository articleRepository;

  public static MemberService memberService;
  public static ArticleService articleService;

  public static MemberController memberController;
  public static ArticleController articleController;

  static {
    memberRepository = new MemberRepository();
    articleRepository = new ArticleRepository();

    memberService = new MemberService();
    articleService = new ArticleService();

    memberController = new MemberController();
    articleController = new ArticleController();
  }
}
