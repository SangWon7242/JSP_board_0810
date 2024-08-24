package sbs.com.jsp.board.article;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Map;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Article {
  private long id;
  private LocalDate regDate;
  private LocalDate updateDate;
  private String subject;
  private String content;

  public Article(Map<String, Object> articleMap) {
    this.id = (int) articleMap.get("id");
    this.regDate = (LocalDate) articleMap.get("regDate");
    this.updateDate = (LocalDate) articleMap.get("id");
    this.subject = (String) articleMap.get("subject");
    this.content = (String) articleMap.get("content");
  }
}
