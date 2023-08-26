package com.ld.admin.controller;

import com.ld.admin.service.GrammarService;
import com.ld.admin.service.TransService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class ContentController {
	
	@Autowired
	private GrammarService grammarService;
	@Autowired
	private TransService transService;

	//X
	@GetMapping("/maincontent.mdo")
	public String maincontentGet() {
		return "admin/maincontent";
	}

	//X
	@GetMapping("/insertgrammar.mdo")
	public String insertgrammarGet() {
		return "admin/insertgrammar";
	}

	//X
	@ResponseBody
    @RequestMapping(value = "/grammarinsert.mdo", method = RequestMethod.POST)
	public List<Map<String, Object>> grammarin(@RequestBody List<Map<String, Object>> param) {
		//sqlSessionTemplate.insert("grammar.grammarinsert",param);
		grammarService.grammarinsert(param);
		return param;
	}

	//X
	@GetMapping("/transinsert.mdo")
	public String transinsertGet() {
		return "admin/transinsert";
	}

	//X
	@ResponseBody
    @RequestMapping(value = "/inserttrans.mdo", method = RequestMethod.POST)
	public List<Map<String, Object>> inserttrans(@RequestBody List<Map<String, Object>> param) {
		transService.transinsert(param);
		return param;
	}
}
