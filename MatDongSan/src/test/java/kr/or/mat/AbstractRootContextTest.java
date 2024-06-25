package kr.or.mat;

import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;

@SpringJUnitWebConfig(locations = "file:src/main/resources/kr/or/mat/spring/conf/*-context.xml")
public abstract class AbstractRootContextTest {
}