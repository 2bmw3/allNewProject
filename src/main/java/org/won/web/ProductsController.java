package org.won.web;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.DatatypeConverter;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.won.domain.ParamVO;
import org.won.domain.PinfoVO;
import org.won.domain.PphotosVO;
import org.won.domain.ProductsVO;
import org.won.service.EditorService;
import org.won.service.ProductsService;
import org.won.util.CookieUtil;

import com.google.gson.Gson;

@Controller
public class ProductsController {

	private static final Logger logger = LoggerFactory.getLogger(ProductsController.class);

	@Inject
	private ProductsService service;

	@Inject
	private EditorService eservice;

	private CookieUtil cookieUtil = new CookieUtil();

	// 상품 삭제
	@PostMapping("/productsDelete")
	public @ResponseBody void productsDelete(int pno) throws Exception {
		System.out.println("cccccccpno="+pno);
		service.delete(pno);
	}

	@GetMapping("/admin/productsUpdate")
	public void adminupdate(int pno, int pageNum, ParamVO vo, Model model) throws Exception {
		List<ProductsVO> list = service.updateProductsRead(pno);
		List<String> pname = new ArrayList<String>();
		for (ProductsVO productsVO : list) {
			pname.add(productsVO.getPphoto());
		}
		Gson gson = new Gson();
		model.addAttribute("pname", gson.toJson(pname));
		model.addAttribute("updateProductsRead", list);
		model.addAttribute("updateInfoRead", service.updateInfoRead(pno));
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("param", vo);
	}

	@PostMapping("/adminUpdateAction")
	public String adminUpdateAction(ParamVO vo, HttpServletRequest request, ProductsVO pvo, PinfoVO ivo, PphotosVO phvo,
			int pageNum) throws Exception {
		pvo.setAdminid(cookieUtil.cookieUtil(request));
		service.update(pvo, ivo, phvo);
		service.containDelete();

		String str = null;
		if (vo.getJspName().equals("/list")) {
			str = vo.getJspName() + "?pageNum=" + pageNum;
		} else if (vo.getJspName().equals("/adminListSearch")) {
			String keyword = URLEncoder.encode(vo.getKeyword(), "UTF-8");
			str = vo.getJspName() + "?pageNum=" + pageNum + "&sType=" + vo.getsType() + "&keyword=" + keyword;
		} else if (vo.getJspName().equals("/index")) {
			str = "/index";
		} else {
			String pkind = URLEncoder.encode(vo.getPkind(), "UTF-8");
			str = vo.getJspName() + "?page=" + pageNum + "&pkind=" + pkind;
		}
		System.out.println("pull name = " + str);
		return "redirect:" + "/admin" + str;
	}

	@PostMapping(value = "/fbFileDelete", produces = "application/text; charset=utf8")
	public @ResponseBody String fbFileDelete(int pno) throws Exception {

		List<PphotosVO> list = service.pphotoRead(pno);
		String fileNames = "";

		for (int i = 0; i < list.size(); i++) {
			String fileName = list.get(i).getPphotostr();
			fileNames += fileName + "/";
		}

		return fileNames;
	}

	@GetMapping("/test")
	public void test() {

	}

	

	

}