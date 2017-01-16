package org.won.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
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

}
