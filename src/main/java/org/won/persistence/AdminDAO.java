package org.won.persistence;

import java.util.List;

import org.won.domain.AdminVO;
import org.won.domain.ProductsVO;
import org.won.domain.QuestionVO;

public interface AdminDAO {

	public void create(AdminVO vo) throws Exception;

	public void update(AdminVO vo) throws Exception;

	public void delete(String adminid) throws Exception;

	public String shoplogo(String adminid) throws Exception;

	public List<ProductsVO> categorySearch(ProductsVO pvo) throws Exception;

	public int categorySearchTotal(ProductsVO pvo) throws Exception;

	// 중복체크
	public String idCheck(String adminid) throws Exception;
	
	//질문 알림
	public List<QuestionVO> latter(String adminid) throws Exception;
}
