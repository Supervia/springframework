package com.mycompany.springframework.controller;

import java.util.Date;

import org.json.JSONObject;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.springframework.dto.Ch03Dto;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch03")
public class Ch03Controller {
	@RequestMapping("/receiveParamData")
	public String getMethodData(String chNum, // 질문
			String param1, String param2, String param3, String param4, String param5, Model model) {
		log.info("실행");

		model.addAttribute("chNum", chNum);
		model.addAttribute("param1", param1);
		model.addAttribute("param2", param2);
		model.addAttribute("param3", param3);
		model.addAttribute("param4", param4);
		model.addAttribute("param5", param5);

		return "ch03/receiveParamData";
	}

	@GetMapping("/postMethodForm")
	public String postMethodForm(String chNum, Model model) {
		model.addAttribute("chNum", "ch03");

		return "ch03/postMethodForm";
	}

	@RequestMapping("/requestParamAnnotation")
	public String requestParamAnnotation(@RequestParam("param1") String arg1, @RequestParam("param2") String arg2,
			@RequestParam("param3") String arg3, @RequestParam("param4") String arg4,
			@RequestParam("param5") String arg5, Model model) {
		log.info("실행");

		model.addAttribute("chNum", "ch03");
		model.addAttribute("param1", arg1);
		model.addAttribute("param2", arg2);
		model.addAttribute("param3", arg3);
		model.addAttribute("param4", arg4);
		model.addAttribute("param5", arg5);

		return "ch03/receiveParamData";
	}

	@RequestMapping("/requestParamAnnotationRequired")
	public String requestParamAnnotationRequired(@RequestParam(required = true) String param1,
			@RequestParam(required = true) String param2, String param3, String param4, String param5, Model model) {
		log.info("실행");

		model.addAttribute("chNum", "ch03");
		model.addAttribute("param1", param1);
		model.addAttribute("param2", param2);
		model.addAttribute("param3", param3);
		model.addAttribute("param4", param4);
		model.addAttribute("param5", param5);

		return "ch03/receiveParamData";
	}

	@RequestMapping("/requestParamAnnotationDefaultValue")
	public String requestParamAnnotationRequiredValue(String param1, String param2, String param3, String param4,
			String param5, @RequestParam(defaultValue = "기본값") String param6, Model model) {
		log.info("실행");

		model.addAttribute("chNum", "ch03");
		model.addAttribute("param1", param1);
		model.addAttribute("param2", param2);
		model.addAttribute("param3", param3);
		model.addAttribute("param4", param4);
		model.addAttribute("param5", param5);
		model.addAttribute("param6", param6);

		return "ch03/receiveParamData";
	}

	@RequestMapping("/typeChange")
	public String typeChange(String param1, int param2, double param3, boolean param4,
			@DateTimeFormat(pattern = "yyyy-MM-dd") Date param5, @RequestParam(defaultValue = "0") int param6,
			Model model) {
		log.info("실행");

		model.addAttribute("chNum", "ch03");
		model.addAttribute("param1", param1);
		model.addAttribute("param2", param2);
		model.addAttribute("param3", param3);
		model.addAttribute("param4", param4);
		model.addAttribute("param5", param5);
		model.addAttribute("param6", param6);

		return "ch03/receiveParamData";
	}

	@RequestMapping("/getDto")
	public String getDto(@ModelAttribute("dto") Ch03Dto dto, Model model) {

		log.info("getDto 실행");
		log.info("param1: " + dto.getParam1());
		log.info("param1: " + dto.getParam2());
		log.info("param1: " + dto.getParam3());
		log.info("param1: " + dto.isParam4());
		log.info("param1: " + dto.getParam5());

		model.addAttribute("chNum", "ch03");
		return "ch03/getDto";
	}

	@GetMapping("/ajax")
	public String ajax(Model model) {
		log.info("ajax 실행");
		model.addAttribute("chNum", "ch03");
		return "ch03/ajax";
	}

	@PostMapping(value = "/getAjaxParams",
			produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxParams(Ch03Dto dto) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("param1", dto.getParam1());
		jsonObject.put("param2", dto.getParam2());
		jsonObject.put("param3", dto.getParam3());
		jsonObject.put("param4", dto.isParam4());
		jsonObject.put("param5", dto.getParam5());
		return jsonObject.toString();
	}
}