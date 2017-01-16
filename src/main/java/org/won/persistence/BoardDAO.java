package org.won.persistence;

import java.util.List;

import org.won.domain.ReviewVO;

public interface BoardDAO {

	public List<ReviewVO> reviewRead(int pno) throws Exception;

}
