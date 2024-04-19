package com.mycompany.springframework.service;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service("service4") //service4 이름으로 관리
@Slf4j
public class Ch12Service4 {
	//매개변수있는 생성자를 쓰면 안됨
	public Ch12Service4() {
		log.info("실행");
	}
}
