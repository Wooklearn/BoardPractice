package com.wook.board.model;

import java.util.Date;

public class BoardDTO {
		
	private int boardNo;				// �Խñ� ��ȣ
	private String title;				// �Խñ� ����
	private String writer;				// �Խñ� �ۼ���
	private String content;				// �Խñ� ����
	private Date regdate;		// �Խñ� ��Ͻð�
	private int hit;					// ��ȸ��
	
	// GETTER & SETTER
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	// Override
	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", hit=" + hit + "]";
	}
	
	
	
}
