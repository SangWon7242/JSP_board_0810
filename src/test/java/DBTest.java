import sbs.com.jsp.board.util.MysqlUtil;
import sbs.com.jsp.board.util.SecSql;

import java.util.List;
import java.util.Map;

public class DBTest {
    public static void main(String[] args) {
        MysqlUtil.setDBInfo("localhost", "sbsst", "sbs123414", "jspboard");

        MysqlUtil.setDevMode(true); // true인 경우 개발자 모드이다.

        // 게시물 리스트 출력(최신 게시물 순으로)

        SecSql sql = new SecSql();
        sql.append("SELECT *");
        sql.append("FROM article");
        sql.append("ORDER BY id DESC;");

        List<Map<String, Object>> articleListMap = MysqlUtil.selectRows(sql);

        System.out.println("articleListMap : " + articleListMap);

        // 1번 게시물 정보 출력
        Map<String, Object> articleMap = MysqlUtil.selectRow(new SecSql().append("SELECT * FROM article WHERE id = ?", 1));

        System.out.println("articleMap : " + articleMap);

        // 2번 게시물 정보 출력
        articleMap = MysqlUtil.selectRow(new SecSql().append("SELECT * FROM article WHERE id = ?", 2));
        System.out.println("articleMap : " + articleMap);

        // 게시물 번호로 접근하여 id 값 출력
        int id = MysqlUtil.selectRowIntValue(new SecSql().append("SELECT id FROM article WHERE id = ?", 1));

        System.out.printf("id : %d\n", id);

        // 게시물 유무 확인
        boolean articleIsExists = MysqlUtil.selectRowBooleanValue(new SecSql().append("SELECT COUNT(*) > 0 FROM article WHERE id = ?", 1));
        System.out.println("articleIsExists : " + articleIsExists);

        // 게시물 저장
        String newSubject = "새 제목";
        String newContent = "새 내용";

        sql = new SecSql();
        sql.append("INSERT INTO article");
        sql.append("SET regDate = NOW()");
        sql.append(", updateDate = NOW()");
        sql.append(", `subject` = ?", newSubject);
        sql.append(", content = ?", newContent);

        MysqlUtil.insert(sql);

        MysqlUtil.closeConnection();
    }
}
