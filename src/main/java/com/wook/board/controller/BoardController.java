package com.wook.board.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	 
 
	// 전체 조회
	@RequestMapping("/list")
	public String list(Model model) {
		
	    List<BoardDTO> postList = boardService.getPostList(); // 전체 조회
	    System.out.println("여기까지 되는가?");
	    model.addAttribute("postList", postList);
	    return "board";
	}


}