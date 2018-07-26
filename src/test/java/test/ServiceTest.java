package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author paulandcode
 * @date 2017年10月13日 下午3:30:08
 */
@RunWith(SpringJUnit4ClassRunner.class)
// 若配置文件在WEB_INF下,则这么写:"file:src/main/webapp/WEB-INF/applicationContext.xml"
@ContextConfiguration({"classpath:config/spring-*.xml"})
public class ServiceTest {

	@Test
	public void test1(){

	}

}