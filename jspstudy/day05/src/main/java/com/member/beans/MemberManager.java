package com.member.beans;

import java.util.ArrayList;

public class MemberManager {
	//리스트 선언
	ArrayList<MemberBeans> ml = new ArrayList<MemberBeans>();
	//멤버 추가하는 메소드
	public void add(MemberBeans member){
		ml.add(member);
	}
	//전체 데이터 확인 메소드
	public ArrayList<MemberBeans> getList(){
		return ml;	
	}
	
}
