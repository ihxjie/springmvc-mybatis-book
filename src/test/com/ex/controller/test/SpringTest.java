package com.ex.controller.test;

import com.ex.controller.ExTestController;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

public class SpringTest {
    @Test
    public void testSpring(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        ExTestController exTestController = (ExTestController)applicationContext.getBean("exTestController");

    }
}
