package org.won.web;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.DatatypeConverter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;
import org.won.domain.AnswerVO;
import org.won.domain.OrderVO;
import org.won.domain.ParamVO;
import org.won.domain.PinfoVO;
import org.won.domain.PphotosVO;
import org.won.domain.ProductsVO;
import org.won.domain.QuestionVO;
import org.won.domain.SearchVO;
import org.won.service.AdminService;
import org.won.service.BoardService;
import org.won.service.OrderService;
import org.won.service.ProductsService;
import org.won.util.CookieUtil;
import org.won.util.PageingUtil;

@RequestMapping("/admin/*")
@Controller
public class AdminController {

	@Inject
	private AdminService service;
	@Inject
	private ProductsService pservice;
	@Inject
	private BoardService bservice;
	@Inject
	private OrderService oservice;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	private CookieUtil cookieUtil = new CookieUtil();
	
	// admin 전용 첫 화면
	@GetMapping("/index")
	public void adminIndex() {

	}
	

	// 주문 관리
	@GetMapping("/order")
	public void adminOrder(String adminid, Model model,HttpServletRequest request) throws Exception {
		
		String username = cookieUtil.cookieUtil(request);
		model.addAttribute("adminOrder", oservice.adminOrderRead(username));
	}

	@PostMapping("/orderAction")
	public void orderAction(int odno) throws Exception {
		oservice.adminOrderUpdate(odno);
	}

	@GetMapping("/orderList")
	public void adminOrderList(String adminid, Model model,HttpServletRequest request) throws Exception {
		String username = cookieUtil.cookieUtil(request);
		model.addAttribute("adminOrder", oservice.adminOrderList(username));
	}

	@GetMapping("/orderMoreList")
	public @ResponseBody List<OrderVO> moreList(int page, Model model,HttpServletRequest request) throws Exception {

		OrderVO vo = new OrderVO();
		int pageNum = page * 5;
		String username = cookieUtil.cookieUtil(request);
		vo.setAdminid(username);
		vo.setPage(pageNum);
		return oservice.adminOrderMoreList(vo);
	}

	// admin 전용 list --> 본인 상품
	@GetMapping("/list")
	public void adminList(int pageNum, Model model,HttpServletRequest request) throws Exception {
		String username = cookieUtil.cookieUtil(request);
		int totalData = pservice.total(username);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();
		// Cookie[] cookie = request.getCookies();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		// cookie[1].getName();
		vo.setAdminid(username);
		model.addAttribute("list", pservice.list(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	// admin 전용 list -->
	@GetMapping("/listAction")
	public String adminListAction(Model model) throws Exception {
		return "redirect:/admin/list?pageNum=1";
	}

	// search
	@GetMapping("/adminListSearch")
	public String listSearch(int pageNum, Model model, String sType, String keyword,HttpServletRequest request)throws Exception {
		SearchVO search = new SearchVO(sType, keyword);
		int searchTotalData = pservice.searchTotal(search);
		int page = (pageNum - 1) * 9;
		search.setPage(page);
		String username = cookieUtil.cookieUtil(request);
		search.setAdminid(username);
		PageingUtil pageing = new PageingUtil(searchTotalData, pageNum);

		model.addAttribute("list", pservice.adminListSearch(search));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "adminListSearch");
		model.addAttribute("sType", sType);
		model.addAttribute("keyword", keyword);
		model.addAttribute("total", searchTotalData);
		model.addAttribute("pageNum", pageNum);

		return "/admin/list";
	}

	@GetMapping("/listSearchAction")
	public String listSearchAction(Model model, String sType, String keyword,HttpServletRequest request)
			throws Exception {
		SearchVO search = new SearchVO(sType, keyword);
		String username = cookieUtil.cookieUtil(request);
		search.setAdminid(username);
		String word = URLEncoder.encode(keyword, "UTF-8");
		return "redirect:/admin/adminListSearch?pageNum=1&sType=" + sType + "&keyword=" + word;
	}

	// admin 전용 view --> 본인 상품 detail
	@GetMapping("/view")
	public void adminView(int pno, int pageNum, ParamVO vo, Model model) throws Exception {
		model.addAttribute("view", pservice.read(pno));
		model.addAttribute("review", bservice.reviewRead(pno));
		model.addAttribute("qna", pservice.question(pno));
		model.addAttribute("answer", pservice.answerRead(pno));
		model.addAttribute("info", pservice.info(pno));
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("param", vo);

	}

	// admin 전용 category --> 본인 상품의 category
	@GetMapping("/categoryList")
	public void adminCategoryList(ProductsVO pvo, Model model,HttpServletRequest request) throws Exception {
		PageingUtil pageing = new PageingUtil(service.categorySearchTotal(pvo), pvo.getPage());
		int categoryTotalData = service.categorySearchTotal(pvo);
		pvo.setPage((pvo.getPage() - 1) * 9);
		String username = cookieUtil.cookieUtil(request);
		pvo.setAdminid(username);
		model.addAttribute("categoryList", service.categorySearch(pvo));
		model.addAttribute("ppkind", pvo.getPkind());
		model.addAttribute("page", pageing);
		model.addAttribute("total", categoryTotalData);
		model.addAttribute("pageNum", pvo.getPage() + 1);
		model.addAttribute("jspName", "/categoryList");
	}

	// admin 전용 category --> 기본적으로 여기를 들어와서 데이터토탈값과 페이지1로 이동시킴
	@GetMapping("/categoryListAction")
	public String adminCategoryListAction(ProductsVO pvo, Model model,HttpServletRequest request) throws Exception {
		
		String username = cookieUtil.cookieUtil(request);
		pvo.setAdminid(username);
		String pkind = URLEncoder.encode(pvo.getPkind(), "UTF-8"); // 한글을 리다이렉트
																	// 파라미터로
																	// 보낼려면 필요
		return "redirect:/admin/categoryList?pkind=" + pkind + "&page=1";

	}

	/* 통계 */
	@GetMapping("/rate")
	public void adminRate() {

	}

	@GetMapping("/chart")
	public void adminChart() {

	}

	@GetMapping("/hititem")
	public void adminHitItem() {

	}

	@GetMapping("/etcrate")
	public void adminEtcrate() {

	}

	// admin write
	@GetMapping("/write")
	public void productWrite() {
	}

	@PostMapping("/productWrite")
	public RedirectView writeAction(HttpServletRequest request, ProductsVO pvo, PinfoVO ivo, PphotosVO phvo)
			throws Exception {
		System.out.println("===============");
		String username = cookieUtil.cookieUtil(request);
		pvo.setAdminid(username);
		pservice.write(pvo, ivo, phvo);
		pservice.containDelete();
		RedirectView redirect = new RedirectView("/admin/index");

		return redirect;
	}

	// 답변
	@PostMapping("/answerAction")
	public void answerAction(AnswerVO vo) throws Exception {
		pservice.answer(vo);
		pservice.qstatus(vo.getQno());
	}

	@PostMapping("/latter")
	public @ResponseBody List<QuestionVO> latter(String adminid) throws Exception {
		return service.latter(adminid);
	}
	
	@PostMapping("/webcamUpload")
	public @ResponseBody String slip(String base64) throws Exception {

		String data = base64.split(",")[1];
		byte[] imageBytes = DatatypeConverter.parseBase64Binary(data);

		UUID uid = UUID.randomUUID();
//		String name = uid + ".png";
		String name = "test.png";

		BufferedImage bufImg = ImageIO.read(new ByteArrayInputStream(imageBytes));
		ImageIO.write(bufImg, "png", new FileOutputStream("C:\\productsPhoto\\" + name));

		String testPno = "273";
		return testPno;
	}
	
	//admin card 제작
	@GetMapping("/cardEdit")
	public void cardEdit(Model model,HttpServletRequest request) throws Exception {
		String username = cookieUtil.cookieUtil(request);
		int totalData = pservice.total(username);
		ProductsVO vo = new ProductsVO();

		vo.setAdminid(username);
		model.addAttribute("list", pservice.list(vo));
	}

}