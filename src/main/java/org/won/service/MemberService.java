package org.won.service;

import java.util.List;

import org.won.domain.AdminVO;
import org.won.domain.MemberVO;

public interface MemberService {

	public void create(MemberVO vo) throws Exception;
	
	public List<AdminVO> indexList() throws Exception;

}
