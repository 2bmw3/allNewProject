package org.won.service;

import java.util.List;

import org.won.domain.ReviewVO;

public interface BoardService {
	
	public List<ReviewVO> reviewRead(int pno) throws Exception;

}
