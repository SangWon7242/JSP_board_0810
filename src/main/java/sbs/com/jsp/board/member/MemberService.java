package sbs.com.jsp.board.member;

import sbs.com.jsp.board.container.Container;

public class MemberService {
  private MemberRepository memberRepository;

  public MemberService() {
    memberRepository = Container.memberRepository;
  }
}
