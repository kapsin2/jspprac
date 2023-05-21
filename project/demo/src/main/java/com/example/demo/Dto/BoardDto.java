package com.example.demo.Dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDto {
    private int board_seq;

    private String board_title;

    private String board_text;

    private String board_writer;

    private String board_img_path;
}
