package sbs.com.jsp.board;

import sbs.com.jsp.board.container.Container;
import sbs.com.jsp.board.util.MysqlUtil;

public class App {
    private static boolean isDevMode() {
        // 이 부분을 false로 바꾸면 production 모드
        // true는 개발자 모드이다.(개발할 때 좋다)
        return true;
    }

    public static void init() {
        // DB 세팅
        MysqlUtil.setDBInfo("localhost", "sbsst", "sbs123414", "jspboard");

        MysqlUtil.setDevMode(isDevMode()); // true인 경우 개발자 모드이다.

        // 공용 객체 세팅
        Container.init();
    }
}
