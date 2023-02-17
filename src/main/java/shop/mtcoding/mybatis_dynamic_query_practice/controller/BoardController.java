package shop.mtcoding.mybatis_dynamic_query_practice.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import lombok.RequiredArgsConstructor;
import shop.mtcoding.mybatis_dynamic_query_practice.model.Comp;
import shop.mtcoding.mybatis_dynamic_query_practice.model.CompRepository;

@RequiredArgsConstructor
@Controller
public class BoardController {

    private final CompRepository compRepository;

    @GetMapping("/chooseWhenOtherwise")
    public String tes(Model model) {
        model.addAttribute("dtos", compRepository.findAll(null, null));
        return "chooseWhenOtherwise";
    }

    @GetMapping("/typesearchtest")
    public @ResponseBody String typeTest(String keywordType, String keyword, Model model) {
        Gson gson = new Gson();
        // System.out.println("테스트 1:" + keywordType);
        // System.out.println("테스트 2:" + keyword);
        List<Comp> comp = compRepository.findAll(keywordType, keyword);
        // System.out.println(comp.size());

        // for (Comp comp2 : comp) {
        // System.out.println(comp2.getCompname());
        // System.out.println(comp2.getComprole());
        // System.out.println(comp2.getTitle());
        // }

        return gson.toJson(comp);
    }
}
