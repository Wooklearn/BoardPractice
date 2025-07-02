package com.wook.board.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		return "board";
	}

	// 게시물 등록 (GET)
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String showRegistPage() {
		return "regist";
	}

	// 게시물 등록 (POST)
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(@ModelAttribute BoardDTO boardDTO) {
		boardService.registPost(boardDTO); // 게시물 등록
		return "redirect:/board/list";
	}

	// 게시물 삭제 (GET)
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam int boardNo) {
		boardService.deletePost(boardNo);
		return "redirect:/board/list";
	}

	// 게시물 상세 (GET)
	@RequestMapping(value = "/detail/{boardNo}")
	public String detail(@PathVariable("boardNo") int boardNo, Model model) {
		BoardDTO board = boardService.detailPost(boardNo);
		model.addAttribute("board", board);
		return "/detail";
	}
	
	
	//게시물 수정 (GET)
	
	
	
	
	
	
	
	

}