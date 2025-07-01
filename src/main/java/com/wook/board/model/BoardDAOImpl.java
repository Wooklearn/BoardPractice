package com.wook.board.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Autowired
    private SqlSession sqlSession;

//    com.wook.board.mapper.BoardMapper
    private static final String NAMESPACE = "com.wook.board.mapper.BoardMapper";

    @Override
    public List<BoardDTO> selectAll() {
        return sqlSession.selectList(NAMESPACE + ".selectAll");
    }
    
    @Override
    public Integer registPost(BoardDTO boardDTO) {
    	return sqlSession.insert(NAMESPACE + ".regist", boardDTO);
    }
    
    @Override
    public Integer deletePost(int boardNo) {
    	return sqlSession.delete(NAMESPACE + ".delete", boardNo);
    }
}
