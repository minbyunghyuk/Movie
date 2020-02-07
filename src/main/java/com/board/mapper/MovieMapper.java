
package com.board.mapper;

import com.board.domain.MovieVO;

import java.util.List;

public interface MovieMapper {

    //글목록
    public List<MovieVO> MovieList()throws Exception;

    //일단 전부 보여주자
    //글보기
    public List<MovieVO> find(String name)throws Exception;

    //조회수 증가
    public void hitPlus(int bno)throws Exception;

    //글수정
    public void boardUpdate(MovieVO vo)throws Exception;

    //글삭제
    public void boardDelete(int bno)throws Exception;
}