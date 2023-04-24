package com.yhc.mvc04.vo;

public class MemberVo {
	private String mid, mname, mpwd, mintro;
	
	public MemberVo() {
	}

	public MemberVo(String mid, String mname, String mpwd, String mintro) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.mpwd = mpwd;
		this.mintro = mintro;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMintro() {
		return mintro;
	}

	public void setMintro(String mintro) {
		this.mintro = mintro;
	}

	@Override
	public String toString() {
		return "MemberVo [mid=" + mid + ", mname=" + mname + ", mpwd=" + mpwd + ", mintro=" + mintro + "]";
	}
	
	//���û��� : toString() - ������. ��ü ������ ���

}
