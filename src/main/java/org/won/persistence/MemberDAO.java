package org.won.persistence;

import org.won.domain.MemberVO;

public interface MemberDAO {

	public void create(MemberVO vo) throws Exception;

}
