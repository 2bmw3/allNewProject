package org.won.web;
 
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.util.UUID;
 
import javax.imageio.ImageIO;
import javax.inject.Inject;
 
import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.won.domain.AdminVO;
import org.won.service.AdminService;
 
@Controller
public class LoginController {
 
	@Inject
	private AdminService service;
 
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
 
	/* admin 회원가입 */
	@GetMapping("/admin_register")
	public void adminRegister() {
 
	}
	
	/*member 회원가입*/
	@GetMapping("/member_register")
	public void memberRegister(){
		
	}
 
	@PostMapping("registerAction")
	public String registerAction(AdminVO vo) throws Exception {
 
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    String encodeAdminpw = passwordEncoder.encode(vo.getAdminpw());
	    vo.setAdminpw(encodeAdminpw);
	    
	    logger.info(vo.getAaddress());
		service.create(vo);
		return "redirect:/login";
	}
 
	// admin login
	@GetMapping("/login")
	public void login(Model model) {
 
	}
 
	// 아이디 중복체크
	@PostMapping("/idCheck")
	public @ResponseBody String idCheck(String adminid) throws Exception {
		return service.idCheck(adminid);
	}
 
}
