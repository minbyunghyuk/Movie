package com.board.controller;

import com.board.domain.MovieVO;
import com.board.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieMapper movieMapper;

    //첫화면

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView main()throws Exception {

        return  new ModelAndView("main");
    }

    @RequestMapping(value="/{name}",method=RequestMethod.GET)
    public ModelAndView view(@PathVariable("name") String name) throws Exception{

        List<MovieVO> list = movieMapper.find(name);

        return new ModelAndView("MovieView","list",list);
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam(value="keyword") String keyword, Model model) throws Exception {
        List<MovieVO> list =  movieMapper.find(keyword.toString());



        return new ModelAndView("MovieView","list",list);
    }



    //게시글 목록
    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public ModelAndView list() throws Exception {
        List<MovieVO> list = movieMapper.MovieList();
        return new ModelAndView("MovieList", "list", list);
    }


}

