package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/html")
public class htmlController {
	@RequestMapping("")
	public String index() {
		return "html/index";
	}
	
	
   @RequestMapping("/exam01_html_structure")
   public String exam01HtmlStructure() {
	   log.info("exam01HtmlStructure() 실행");
      return "html/exam01_html_structure";
   }
   
   @RequestMapping("/exam02_element_attribute")
   public String exam02ElementAttribute() {
	   log.info("exam02ElementAttribute() 실행");
      return "html/exam02_element_attribute";
   }
   
   @RequestMapping("/exam03_block_inline_element")
   public String exam03_block_inline_element() {
	   log.info("exam03blockinlineelement() 실행");
      return "html/exam03_block_inline_element";
   }
   @RequestMapping("/main_page")
   public String main_page() {
	   log.info("main_page() 실행");
      return "html/main_page";
   }
}
