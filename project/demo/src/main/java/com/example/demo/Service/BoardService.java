package com.example.demo.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Dto.BoardDto;
import com.example.demo.Mapper.BoardMapper;
import java.util.*;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {

    @Autowired
    private BoardMapper boardMapper;

    public List<BoardDto> getAllBoards() {
        List<BoardDto> boards = new ArrayList<BoardDto>();
        boards = boardMapper.getAllBoards();
        return boards;
    }

    public List<BoardDto> searchBoards(String search) {
        List<BoardDto> boards = new ArrayList<BoardDto>();
        boards = boardMapper.searchBoards(search);
        return boards;
    }

    public BoardDto getBoard(int seq) {
        return boardMapper.getBoard(seq);
    }

    public int createBoard(BoardDto boardDto) {
        System.out.println(boardDto.getBoard_title()+"----------------------------");
        boardMapper.createBoard(boardDto);
        return 1;
    }

    public int updateBoard(int seq, List<Map<String, String>> boardList) {
        BoardDto boardDto = new BoardDto();
        boardDto.setBoard_seq(seq);
        boardDto.setBoard_title(boardList.get(0).get("board_title"));
        boardDto.setBoard_writer(boardList.get(0).get("board_writer"));
        boardDto.setBoard_text(boardList.get(0).get("board_text"));
        boardDto.setBoard_img_path(boardList.get(0).get("board_img_path"));
        boardMapper.updateBoard(boardDto);
        return 1;
    }

    public int deleteBoard(int seq) {
        boardMapper.deleteBoard(seq);
        return 1;
    }

    public int multipleDelete(int[] seqs) {
        for(int seq : seqs) {
            boardMapper.deleteBoard(seq);
        }
        return 1;
    }
    
}
