package shop.mtcoding.mybatis_dynamic_query_practice.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class User {
    private int id;
    private String username;
    private String password;
    private String email;
    private String profile; // 사진의 경로 (static/image 폴더에 사진 추가하기)
    private String role;
    private Timestamp createdAt;

}
