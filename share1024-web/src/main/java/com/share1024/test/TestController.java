package com.share1024.test;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.base.Charsets;
import com.google.common.io.Resources;


@Controller
public class TestController {
	
	@RequestMapping("test")
	@ResponseBody
	public String test() throws IOException{
		String content =Resources.toString(Resources.getResource("1.md"), Charsets.UTF_8);
		return content;
	}
}
