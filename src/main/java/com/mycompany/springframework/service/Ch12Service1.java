package com.mycompany.springframework.service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service1 {
	public Ch12Service1() {
		log.info("실행");
	}
	
	public Ch12Service1 getObject() {
		log.info("실행");
		return new Ch12Service1();
	}
}
