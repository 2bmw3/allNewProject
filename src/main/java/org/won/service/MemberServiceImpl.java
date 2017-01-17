package org.won.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.won.domain.AdminVO;
import org.won.domain.MemberVO;
import org.won.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	@Override
	public void create(MemberVO vo) throws Exception {
		dao.create(vo);

	}

	@Override
	public List<AdminVO> indexList() throws Exception {
		return dao.indexList();
	}

}
