package org.won.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.won.domain.AdminVO;
import org.won.domain.MemberVO;
import org.won.service.AdminService;
import org.won.service.MemberService;

@Controller
public class LoginController {

	@Inject
	private AdminService service;
	@Inject
	private MemberService mservice;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	/* admin 회원가입 */
	@GetMapping("/register")
	public void adminRegister() {

	}

	/* member 회원가입 */
	@GetMapping("/member/register")
	public void memberRegister() {
	}

	@PostMapping("/memberRegisterAction")
	public String memberRegisterAction(MemberVO mvo) throws Exception{
	

		mservice.create(mvo);
		return "redirect:/member/login";
	}

	@PostMapping("/registerAction")
	public String registerAction(AdminVO vo) throws Exception {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodeAdminpw = passwordEncoder.encode(vo.getAdminpw());
		vo.setAdminpw(encodeAdminpw);

		service.create(vo);
		return "redirect:/login";
	}

	// admin login
	@GetMapping("/login")
	public void login(Model model) {

	}
	
	@GetMapping("/member/login")
	public void memberLogin(Model model) {

	}
	
	@PostMapping("/member/loginAction")
	public @ResponseBody String loginAction(MemberVO vo) throws Exception{
		String str = "";
		
			vo = mservice.login(vo);	
			System.out.println(vo);
			if(vo.getUserid() == null){
				str = "fail";
			}else{
				str = "success";
			}
			System.out.println(str);
		return str;
	}

	// 아이디 중복 체크
	@GetMapping("/idCheck")
	public @ResponseBody String idCheck(String adminid) throws Exception {
		return service.idCheck(adminid);
	}
	
	@GetMapping("/addressSample")
	public void addressSample(){
		
	}
	@GetMapping("/addressPopup")
	public void addressPopup(){
		
	}
	

}
