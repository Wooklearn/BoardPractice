package com.wook.board.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wook.board.model.BoardDTO;
import com.wook.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	private final BoardService boardService;
	
	@Autowired
	public BoardController(BoardService boardService) { 
		this.boardService = boardService;
	}
	 
 
	// 전체 조회 (GET)
	@RequestMapping("/list")
	public String list(Model model) {
		
	    List<BoardDTO> boardList = boardService.getPostList(); // 전체 조회
	    System.out.println("여기까지 되는가?");
	    model.addAttribute("boardList", boardList);
	    return "board2";
	}
	
	// 게시물 등록 (POST)
	@RequestMapping("/regist")
	public String regist(@RequestBody BoardDTO boardDTO) {
		
		Integer boardRegist = boardService.registPost(boardDTO);	// 게시물 등록
		
		
		return "";
	}


}