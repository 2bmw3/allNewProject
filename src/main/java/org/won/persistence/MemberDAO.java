package org.won.persistence;

import java.util.List;

import org.won.domain.AdminVO;
import org.won.domain.MemberVO;
import org.won.domain.ProductsVO;

public interface MemberDAO {

	public void create(MemberVO vo) throws Exception;

	public List<AdminVO> indexList() throws Exception;

}
