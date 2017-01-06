package com.spring.leran;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.support.AbstractBeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.support.JdbcAccessor;

public class T {

	public void test1(){
		ClassPathResource resource  = new ClassPathResource("");
		BeanFactory beanFactory ;
		Resource resource2;
		FileSystemXmlApplicationContext f;
		ClassPathXmlApplicationContext xmlApplicationContext;
		AbstractBeanFactory abstractBeanFactory;
		JdbcAccessor jdbcAccessor;

	}
	
	public void test(){
		List<T> results = (new ArrayList<T>());
	}
}
