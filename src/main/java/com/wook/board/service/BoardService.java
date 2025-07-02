package com.wook.board.service;

import java.util.List;

import com.wook.board.model.BoardDTO;

public interface BoardService {

	List<BoardDTO> getPostList(); // 게시물 전체조회
	
	Integer registPost(BoardDTO boardDTO);	// 게시물 등록
	
	Integer deletePost(int boardNo);	// 게시물 삭제
	
	BoardDTO detailPost(int boardNo);	// 게시물 상세페이지
	
}
