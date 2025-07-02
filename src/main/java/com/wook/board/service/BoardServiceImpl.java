package com.wook.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wook.board.model.BoardDAO;
import com.wook.board.model.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	private final BoardDAO boardDAO;
	
	@Autowired
	public BoardServiceImpl(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}
	
	@Override
	public List<BoardDTO> getPostList() {
		return boardDAO.selectAll();
	}
	
	@Override
	public Integer registPost(BoardDTO boardDTO) {
		
		return boardDAO.registPost(boardDTO);
	}

	@Override
	public Integer deletePost(int boardNo) {
		return boardDAO.deletePost(boardNo);
	}
	
	@Override
	public BoardDTO detailPost(int boardNo) {
		return boardDAO.detailPost(boardNo);
	}
	

}
