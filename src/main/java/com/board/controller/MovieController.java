package com.board.controller;


import Library.CSV;
import com.board.domain.MovieVO;
import com.board.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import java.io.File;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private MovieMapper movieMapper;
    CSV csv = new CSV();

    //min 첫화면
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView main() throws Exception {


        return new ModelAndView("main");
    }

    //min 사용자 이름입력시 추천영화 10개 출력
    @RequestMapping("/search")
    public ModelAndView search(@RequestParam(value = "keyword") String keyword) throws Exception {
        //최초 DB 에서 사용자이름을 통한 영화 List get
        List<MovieVO> Movielist = movieMapper.find(keyword.toString());
        //최초 CSV 에서 영화 image Link Get
        List<String> Imglinklist = csv.readFromCsvFile(",", csv.getPath());
        //Moive list 에 img 정보 add
        Movielist = csv.SetMovieimgLink(Movielist, Imglinklist);

        if (Movielist.size() == 0) {
            //min 검색했을때 사용자 정보가 없다면
            return new ModelAndView("ErrorView", "list", Movielist);
        }
        //min 검색후에 사용자 정보가 있으면
        return new ModelAndView("MovieView", "list", Movielist);
    }


}


