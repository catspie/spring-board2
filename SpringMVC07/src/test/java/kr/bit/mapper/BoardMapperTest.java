package kr.bit.mapper;
import java.sql.Connection;
import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.bit.entity.Board;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTest {

	@Autowired
	BoardMapper boardMapper;
	
	/*
	 * @Test public void testGetList() { List<Board> list = boardMapper.getList();
	 * for(Board vo : list) { System.out.println(vo); log.info(vo); } }
	 */
	
	/*
	 * @Test public void testInsert() { Board vo = new Board();
	 * vo.setMemId("bit01"); vo.setTitle("A"); vo.setContent("새로 작성한 글");
	 * vo.setWriter("관리자"); boardMapper.insert(vo); log.info(vo); }
	 */
	
	@Test
	public void testInsert2() {
			Board vo = new Board();
			vo.setMemId("bit03");
			vo.setTitle("C");
			vo.setContent("새로 작성한 글");
			vo.setWriter("홍길동");
			boardMapper.insertSelectKey(vo);
			log.info(vo);
	}
	
} 
