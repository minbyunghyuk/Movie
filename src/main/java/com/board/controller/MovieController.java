package com.board.controller;

import com.board.domain.MovieVO;
import com.board.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private MovieMapper movieMapper;
    List<String[]> LinkList = new ArrayList<>();
    String[] Link = new String[100];
    List<String> FinalLink = new ArrayList<>();
    //첫화면

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView main() throws Exception {

        String Path = "D:\\Springboot\\workspace\\board\\src\\main\\webapp\\csv\\imglist.CSV";
        readFromCsvFile(",", Path);
        for (int i = 0; i < 100; i++) {
            Link = LinkList.get(i);
            FinalLink.add(Link[0]);
        }
        return new ModelAndView("main");
    }

    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable("name") String name) throws Exception {

        List<MovieVO> list = movieMapper.find(name);

        return new ModelAndView("MovieView", "list", list);
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam(value = "keyword") String keyword, Model model) throws Exception {
        List<MovieVO> list = movieMapper.find(keyword.toString());
        SetLink(list);

        if (list.size() == 0) {
            return new ModelAndView("ErrorView", "list", list);
        }
        return new ModelAndView("MovieView", "list", list);
    }


    public void readFromCsvFile(String separator, String fileName) {
        try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
            List<String[]> list = new ArrayList<>();
            String line = "";
            while ((line = reader.readLine()) != null) {
                String[] array = line.split(separator);
                LinkList.add(array);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void SetLink(List<MovieVO> list) {
        String DBtile;
        String CSVtitle;
        for (MovieVO movieVO : list) {
            for (int i = 0; i < FinalLink.size(); i++) {
                {
                    DBtile = movieVO.getTitle();
                    CSVtitle = FinalLink.get(i);
                    if (CSVtitle.contains(DBtile)) {
                        movieVO.setLink(CSVtitle);
                        //System.out.println(CSVtitle);
                    }
                }
            }
        }
    }
}


