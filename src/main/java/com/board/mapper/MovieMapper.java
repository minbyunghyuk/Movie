
package com.board.mapper;

import com.board.domain.MovieVO;

import java.util.List;

public interface MovieMapper {

    //public List<MovieVO> MovieList()throws Exception;

    //min User name으로 DB 내용 조회
     public List<MovieVO> find(String name)throws Exception;

    //public void hitPlus(int bno)throws Exception;

    //public void boardUpdate(MovieVO vo)throws Exception;

    //public void boardDelete(int bno)throws Exception;
}