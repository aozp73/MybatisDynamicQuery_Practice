package shop.mtcoding.mybatis_dynamic_query_practice.controller;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;

import shop.mtcoding.mybatis_dynamic_query_practice.model.Board;
import shop.mtcoding.mybatis_dynamic_query_practice.model.BoardRepository;

@MybatisTest
public class BoardControllerTest {

    @Autowired
    private BoardRepository boardRepository;

    @Test
    public void dynamic_if() {
        List<Board> boardAtNull = boardRepository.dynamicIf(null);
        for (Board board : boardAtNull) {
            System.out.println("Null일 때 : " + board.getTitle());
        }
        System.out.println();
        List<Board> boardNoNull = boardRepository.dynamicIf("1");
        for (Board board : boardNoNull) {
            System.out.println("title에 1 넣는 경우 : " + board.getTitle());
        }
    }
}
