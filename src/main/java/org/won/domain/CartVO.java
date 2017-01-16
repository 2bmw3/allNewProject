package org.won.domain;

public class CartVO {

	private int cno;
	private int tno;
	private String userid;

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "CartVO [cno=" + cno + ", tno=" + tno + ", userid=" + userid + "]";
	}

}