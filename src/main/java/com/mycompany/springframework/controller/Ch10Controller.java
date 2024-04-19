package com.mycompany.springframework.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.exception.Ch10CustomException;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch10")
public class Ch10Controller {
	@GetMapping("/handlingException1")
	public String handlingException1(String data) {
		try {
			if (data.equals("java")) {

			}
		} catch (NullPointerException e) {
			log.info("data가 넘어오지 않았습니다.");
			return "ch10/error500_null";
		}
		return "redirect:/";
	}

	@GetMapping("/handlingException2")
	public String handlingException2(String data) {
		if (data.equals("java")) {
			//Null포인터익셉션 발생가능
		}
		return "redirect:/";
	}
	
	@GetMapping("/handlingException3")
	public String handlingException3() throws Ch10CustomException {
		if (true) {
			throw new Ch10CustomException("어떤 이유 때문에 예외 발생함");
		}
		return "redirect:/";
	}
	
	@GetMapping("/handlingException4")
	public String handlingException4() throws IOException {
		if (true) {
			throw new IOException("입출력 예외 발생");
		}
		return "redirect:/";
	}
}
