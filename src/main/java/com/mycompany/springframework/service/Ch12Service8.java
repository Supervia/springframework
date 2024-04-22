package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12Dao3;
import com.mycompany.springframework.dao.Ch12Dao4;
import com.mycompany.springframework.dao.Ch12Dao5;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service8 {
	
	/*관리객체가 되어야 어노테이션으로 주입 가능 Dao내 Repository 어노테이션 체크*/
	//Field 주입
	//@Autowired
	@Resource
	private Ch12Dao3 ch12Dao3;
	private Ch12Dao4 ch12Dao4;
	private Ch12Dao5 ch12Dao5;
	
	//Constructor 주입
	@Autowired
	public Ch12Service8(Ch12Dao4 ch12Dao4) {
		log.info("실행");
		this.ch12Dao4 = ch12Dao4;
	}

	//Setter 주입
	@Autowired
	public void setCh12Dao5(Ch12Dao5 ch12Dao5) {
		log.info("실행");
		this.ch12Dao5 = ch12Dao5;
	}
}
