package org.won.persistence;

import java.util.List;

import org.won.domain.CartVO;
import org.won.domain.OrderVO;

public interface OrderDAO {

   public List<OrderVO> adminOrderRead(String adminid) throws Exception;

   public void adminOrderUpdate(int odno) throws Exception;

   public List<OrderVO> adminOrderList(String adminid) throws Exception;

   public List<OrderVO> adminOrderMoreList(OrderVO vo) throws Exception;

   public List<CartVO> cartList(String userid) throws Exception;
}