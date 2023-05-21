package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Dto.BoardDto;
import com.example.demo.Service.BoardService;
import java.util.*;


import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BoardController {

    @Autowired
    private BoardService boardService;

    @GetMapping("/boards")
    public String main() {
        return "boards";
    }

    @GetMapping("/createboard")
    public String create() {
        return "createboard";
    }

    @GetMapping("/allBoards")
    public ResponseEntity<List<BoardDto>> getAllBoards() {
        return ResponseEntity.ok(boardService.getAllBoards());
    }

    @GetMapping("/searchBoards")
    public ResponseEntity<List<BoardDto>> searchBoards(@RequestParam("search") String search) {
        return ResponseEntity.ok(boardService.searchBoards(search));
    }

    @GetMapping("/board/{seq}")
    public ResponseEntity<BoardDto> getBoard(@PathVariable int seq) {
        return ResponseEntity.ok(boardService.getBoard(seq));
    }

    @GetMapping("/oneboard")
    public String oneBoard() {
        return "oneboard";
    }

    @PostMapping("/board")
    public ResponseEntity<Integer> createBoard(@RequestBody BoardDto boardDto) {
        return ResponseEntity.ok(boardService.createBoard(boardDto));
    }

    @GetMapping("/updateboard")
    public String updateBoard() {
        return "updateboard";
    }

    @PatchMapping("/board/{seq}")
    public ResponseEntity<Integer> updateBoard(@RequestBody List<Map<String, String>> boardList,@PathVariable int seq) {
        System.out.println("-----------------------------");
        return ResponseEntity.ok(boardService.updateBoard(seq, boardList));
    }

    @PatchMapping("/d-board/{seq}")
    public ResponseEntity<Integer> deleteBoard(@PathVariable int seq) {
        return ResponseEntity.ok(boardService.deleteBoard(seq));
    }

    @PatchMapping("/multipleDelete")
    public ResponseEntity<Integer> multipleDelete(@RequestParam(value="checkBoxArr[]") int[] seqs ) {
        return ResponseEntity.ok(boardService.multipleDelete(seqs));
    }


}
