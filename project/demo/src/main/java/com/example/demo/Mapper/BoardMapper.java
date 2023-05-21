package com.example.demo.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.example.demo.Dto.BoardDto;

@Repository
@Mapper
public interface BoardMapper {
    public List<BoardDto> getAllBoards();
    public List<BoardDto> searchBoards(String search);
    public BoardDto getBoard(int seq);
    public void createBoard(BoardDto boardDto);
    public void updateBoard(BoardDto boardDto);
    public void deleteBoard(int seq);
}
