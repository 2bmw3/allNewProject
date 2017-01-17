package org.won.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.won.domain.OrderVO;
import org.won.service.OrderService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ProductTest {

	private static final Logger logger = LoggerFactory.getLogger(ProductTest.class);

	@Inject
	private OrderService service;
	


	@Test
	public void adminReadTest() throws Exception {
		
		System.out.println(service.cartList("test"));
		
		
		logger.info("testtesttesttesttesttesttesttesttesttesttesttesttesttest"+service.cartList("test"));
		
		
	
	}

}
