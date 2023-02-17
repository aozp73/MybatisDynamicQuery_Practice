package shop.mtcoding.mybatis_dynamic_query_practice.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Board {
    private int id;
    private String title;
    private String content;
    private int userId;
    private Timestamp createdAt;

}
