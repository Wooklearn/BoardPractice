package com.wook.board.service;

import java.util.List;

import com.wook.board.model.BoardDTO;

public interface BoardService {

	List<BoardDTO> getPostList(); // 게시물 전체조회
	
}
