package org.won.web;

import java.net.URLEncoder;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.won.domain.CartVO;
import org.won.domain.ProductsVO;
import org.won.service.BoardService;
import org.won.service.MemberService;
import org.won.service.OrderService;
import org.won.service.ProductsService;
import org.won.util.CookieUtil;
import org.won.util.PageingUtil;

@RequestMapping("/member/*")
@Controller
public class MemberController {

	@Inject
	private ProductsService pservice;
	@Inject
	private BoardService bservice;
	@Inject
	private OrderService oservice;
	@Inject
	private MemberService mservice;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	private CookieUtil cookieUtil = new CookieUtil();

	@GetMapping("/index")
	public String index(Model model) throws Exception {
		model.addAttribute("indexList", mservice.indexList());
		return "/member/index";
	}

	@GetMapping("/view")
	public void view() {
	}

	@GetMapping("/login")
	public void login() {
	}

	@GetMapping("/brand")
	public void brand() {
	}

	@GetMapping("/man_products")
	public void man_products() {
	}

	@GetMapping("/woman_products")
	public void woman_products() {
	}

	@GetMapping("/order")
	public void order() {
	}

	// thema1 start
	@GetMapping("/thema1/index")
	public void thema1Index(String adminid) {

	}

	@GetMapping("/thema1/topList")
	public void thema1topList(int pageNum, Model model, String adminid, String pkind) throws Exception {
		int totalData = pservice.total(adminid);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);

		vo.setPkind(pkind);
		URLEncoder.encode(pkind, "UTF-8");

		logger.info(pservice.pkindList(vo).toString());
		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/bottomList")
	public void thema1bottomList(int pageNum, Model model, String adminid, String pkind) throws Exception {
		int totalData = pservice.total(adminid);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);
		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/outerList")
	public void thema1outerList(int pageNum, Model model, String adminid, String pkind) throws Exception {
		int totalData = pservice.total(adminid);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);
		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/footWeareAccList")
	public void thema1footWeareAccList(int pageNum, Model model, String adminid, String pkind) throws Exception {
		int totalData = pservice.total(adminid);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);
		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/etcList")
	public void thema1etcList(int pageNum, Model model, String adminid, String pkind) throws Exception {
		int totalData = pservice.total(adminid);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);
		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/view")
	public void thema1View(int pno, Model model) throws Exception {
		model.addAttribute("view", pservice.read(pno));
		model.addAttribute("review", bservice.reviewRead(pno));
		model.addAttribute("qna", pservice.question(pno));
		model.addAttribute("answer", pservice.answerRead(pno));
		model.addAttribute("infoColor", pservice.infoColor(pno));
	}

	@GetMapping("/thema1/faq")
	public void thema1Faq() {
	}

	@GetMapping("/thema1/account")
	public void thema1Account() {
	}

	@GetMapping("/thema1/cart")
	public void thema1Cart(String adminid, Model model) throws Exception {

		CartVO vo = new CartVO();
		vo.setAdminid(adminid);
		vo.setUserid("test");

		model.addAttribute("cart", oservice.cartList(vo));
	}

	@GetMapping("/thema1/checkout")
	public void thema1Checkout() {
	}
	// thema1 end
	
	

	// thema2 start
	@GetMapping("/thema2/index")
	public void thema2Index(String adminid) {

	}

	@GetMapping("/thema2/list")
	public void thema2List() {

	}

	@GetMapping("/thema2/view")
	public void thema2View(int pno, Model model) throws Exception {
		model.addAttribute("view", pservice.read(pno));
		model.addAttribute("infoColor", pservice.infoColor(pno));
	}

	@GetMapping("/thema2/cart")
	public void thema2Cart() {
	}

	@GetMapping("/thema2/order")
	public void thema2Order() {
	}
	// thema2 end

	// thema3 start
	@GetMapping("/thema3/index")
	public void thema3Index() {

	}

	@GetMapping("/thema3/list")
	public void thema3List() {
	}

	@GetMapping("/thema3/view")
	public void thema3View() {
	}

	@GetMapping("/thema3/order")
	public void thema3VOrder() {
	}

	@GetMapping("/thema3/cart")
	public void thema3Cart() {
	}
	// thema3 end

	// thema4 strat
	@GetMapping("/thema4/list")
	public void thema4List() {

	}

	@GetMapping("/thema4/cart")
	public void thema4Cart() {

	}

	// thema4 view
	@GetMapping("/thema4/view")
	public void thema4View(int pno, Model model) throws Exception {
		model.addAttribute("view", pservice.read(pno));
		model.addAttribute("review", bservice.reviewRead(pno));
		model.addAttribute("qna", pservice.question(pno));
		model.addAttribute("answer", pservice.answerRead(pno));
		model.addAttribute("infoColor", pservice.infoColor(pno));
	}

	@GetMapping("/thema4/index")
	public void thema4Index() {

	}
	// thema4 end

}