package shop.mtcoding.mybatis_dynamic_query_practice.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Comp {
    private int id;
    private String compname;
    private String title;
    private String comprole;
    private Timestamp createdAt;
}
