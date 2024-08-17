package sbs.com.jsp.board.member;

import sbs.com.jsp.board.Rq;
import sbs.com.jsp.board.container.Container;

public class MemberController {
  private MemberService memberService;

  public MemberController() {
    memberService = Container.memberService;
  }

  public void showJoin(Rq rq) {
    rq.appendBody("회원가입");
  }
}
