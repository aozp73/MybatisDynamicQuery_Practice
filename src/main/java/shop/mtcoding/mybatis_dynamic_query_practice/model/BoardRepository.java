package shop.mtcoding.mybatis_dynamic_query_practice.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardRepository {

        public List<Board> dynamicIf(String title);

        public List<Board> findAll();

        public Board findById(int id);

        public int insert(@Param("title") String title, @Param("content") String content,
                        @Param("thumbnail") String thumbnail,
                        @Param("userId") int userId);

        public int updateById(@Param("id") int id, @Param("title") String title,
                        @Param("content") String content, @Param("thumbnail") String thumbnail);

        public int deleteById(int id);
}