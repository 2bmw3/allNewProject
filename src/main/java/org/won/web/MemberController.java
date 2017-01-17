package org.won.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.won.domain.MemberVO;
import org.won.service.BoardService;
import org.won.service.MemberService;
import org.won.service.ProductsService;

@RequestMapping("/member/*")
@Controller
public class MemberController {

	@Inject
	private ProductsService pservice;
	@Inject
	private BoardService bservice;


	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@GetMapping("/index")
	public void index() {
	}

	@GetMapping("/view")
	public void view() {
	}

	@GetMapping("/login")
	public void login() {
	}

	@GetMapping("/cart")
	public void cart() {
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
	public void thema1Index() {

	}

	@GetMapping("/thema1/topList")
	public void thema1topList() {
	}
	@GetMapping("/thema1/bottomList")
	public void thema1bottomList() {
	}
	@GetMapping("/thema1/outerList")
	public void thema1outerList() {
	}
	@GetMapping("/thema1/footWeareAccList")
	public void thema1footWeareAccList() {
	}
	@GetMapping("/thema1/etcList")
	public void thema1etcList() {
	}

	@GetMapping("/thema1/view")
	public void thema1View(int pno, Model model) throws Exception {
		model.addAttribute("view", pservice.read(pno));
		model.addAttribute("review", bservice.reviewRead(pno));
		model.addAttribute("qna", pservice.question(pno));
		model.addAttribute("answer", pservice.answerRead(pno));
		model.addAttribute("info", pservice.info(pno));
	}

	@GetMapping("/thema1/faq")
	public void thema1Faq() {
	}

	@GetMapping("/thema1/account")
	public void thema1Account() {
	}

	@GetMapping("/thema1/cart")
	public void thema1Cart() {
	}

	@GetMapping("/thema1/checkout")
	public void thema1Checkout() {
	}
	// thema1 end

	// thema2 start
	@GetMapping("/thema2/index")
	public void thema2Index() {

	}

	@GetMapping("/thema2/list")
	public void thema2List() {

	}

	@GetMapping("/thema2/view")
	public void thema2View() {
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

	@GetMapping("/thema4/view")
	public void thema4View() {

	}

	@GetMapping("/thema4/index")
	public void thema4Index() {

	}
	// thema4 end

}