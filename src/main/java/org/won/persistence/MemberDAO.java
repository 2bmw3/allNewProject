package org.won.persistence;

import java.util.List;

import org.won.domain.AdminVO;
import org.won.domain.MemberVO;
import org.won.domain.QuestionVO;

public interface MemberDAO {

	public void create(MemberVO vo) throws Exception;

	public List<AdminVO> indexList() throws Exception;
	
	//질문 등록
	public void questionWrite(QuestionVO vo) throws Exception;
	
	//질문 pw check
	public String questionPwCheck(int qno) throws Exception;
	
	//답변 1개 가져오기
	public String answerOne(int qno)throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
}
