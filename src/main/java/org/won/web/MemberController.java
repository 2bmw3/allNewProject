package org.won.web;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.won.domain.AdminVO;
import org.won.domain.CartVO;
import org.won.domain.PinfoVO;
import org.won.domain.ProductsVO;
import org.won.service.AdminService;
import org.won.service.BoardService;
import org.won.service.MemberService;
import org.won.service.OrderService;
import org.won.service.ProductsService;
import org.won.util.CookieUtil;
import org.won.util.PageingUtil;

import com.google.gson.Gson;

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
	@Inject
	private AdminService aservice;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	private CookieUtil cookieUtil = new CookieUtil();

	//void good
	@GetMapping("/index")
	public void index(Model model) throws Exception {
		model.addAttribute("indexList", mservice.indexList());
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
	public void thema1Index(String shopname, Model model)throws Exception {
		String adminid = aservice.getAdminId(shopname);
		AdminVO vo = new AdminVO();
		vo.setAdminid(adminid);
		vo.setLimitnum(8);
		model.addAttribute("hitItem", pservice.hitItem(vo));
		model.addAttribute("newItem", pservice.newItem(vo));
	}

	@GetMapping("/thema1/topList")
	public void thema1topList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "topList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/bottomList")
	public void thema1bottomList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "bottomList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/outerList")
	public void thema1outerList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "outerList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/footWeareAccList")
	public void thema1footWeareAccList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "footWeareAccList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema1/etcList")
	public void thema1etcList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "etcList");
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
	public void thema1Cart(String shopname, Model model) throws Exception {

		CartVO vo = new CartVO();
		vo.setShopname(shopname);
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

	// 전체 리스트
	@GetMapping("/thema2/list")
	public void thema2List(int pageNum, Model model, String shopname) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		int totalData = pservice.total(adminid);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);
		ProductsVO vo = new ProductsVO();

		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);

		model.addAttribute("list", pservice.list(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "list");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema2/topList")
	public void thema2topList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "topList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema2/bottomList")
	public void thema2bottomList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "bottomList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema2/outerList")
	public void thema2outerList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "outerList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema2/shoesAccList")
	public void thema2shoseAccList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "shoesAccList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
	}

	@GetMapping("/thema2/etcList")
	public void thema2etcList(int pageNum, Model model, String shopname, String pkind) throws Exception {
		String adminid = aservice.getAdminId(shopname);
		ProductsVO vo = new ProductsVO();
		int page = (pageNum - 1) * 9;
		vo.setPage(page);
		vo.setAdminid(adminid);
		vo.setPkind(pkind);

		int totalData = pservice.pkindTotal(vo);
		PageingUtil pageing = new PageingUtil(totalData, pageNum);


		model.addAttribute("list", pservice.pkindList(vo));
		model.addAttribute("page", pageing);
		model.addAttribute("actionName", "etcList");
		model.addAttribute("total", totalData);
		model.addAttribute("pageNum", pageNum);
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
	public void thema3View(int pno, Model model) throws Exception {
		model.addAttribute("view", pservice.read(pno));
		model.addAttribute("review", bservice.reviewRead(pno));
		model.addAttribute("qna", pservice.question(pno));
		model.addAttribute("answer", pservice.answerRead(pno));
		model.addAttribute("infoColor", pservice.infoColor(pno));
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

	//cart
	@PostMapping("/cartDelete")
	public @ResponseBody void cartDelete(int cno) throws Exception {

		System.out.println(cno);
		oservice.cartDelete(cno);
	} 
	
	@GetMapping("/infoSize")
	public @ResponseBody List<PinfoVO> infoSize(PinfoVO vo) throws Exception{
		List<PinfoVO> list = pservice.infoSize(vo);
		return list;
	}

}