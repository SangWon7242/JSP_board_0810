package sbs.com.jsp.board.article;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Map;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Article {
  private long id;
  private LocalDateTime regDate;
  private LocalDateTime updateDate;
  private String subject;
  private String content;

  public Article(Map<String, Object> articleMap) {
    this.id = (int) articleMap.get("id");
    this.regDate = (LocalDateTime) articleMap.get("regDate");
    this.updateDate = (LocalDateTime) articleMap.get("updateDate");
    this.subject = (String) articleMap.get("subject");
    this.content = (String) articleMap.get("content");
  }
}
