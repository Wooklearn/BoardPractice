package com.wook.board.model;

import java.util.List;

public interface BoardDAO {

	List<BoardDTO> selectAll();
	
	Integer registPost(BoardDTO boardDTO);
	
	Integer deletePost(int boardNo);
}
