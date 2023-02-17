package shop.mtcoding.mybatis_dynamic_query_practice.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CompRepository {

        public List<Comp> findAll(@Param("type") String type, @Param("keyword") String keyword);

        public Comp findById(int id);

        public int insert(@Param("compname") String compname, @Param("title") String title,
                        @Param("comprole") String comprole);

        public int updateById(@Param("id") int id, @Param("compname") String compname, @Param("title") String title,
                        @Param("comprole") String comprole);

        public int deleteById(int id);
}
