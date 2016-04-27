package shopERP.groupware.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.groupware.mapper.GwMapper;

public class GwDao {
	private static GwDao dao = new GwDao();

	public static GwDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream input = null;

		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public List<Notice> noticeList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		return sqlSession.getMapper(GwMapper.class).noticeList();
	}

	public String getEmpName(String emp_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		return sqlSession.getMapper(GwMapper.class).getEmpName(emp_id);
	}

	public int noticeInsert(Notice notice) {
		int re = -1;

		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(GwMapper.class).noticeInsert(notice);

			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return re;
	}
	
	public Notice selectNotice(int notice_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Notice notice = sqlSession.getMapper(GwMapper.class).selectNotice(notice_id);
		
		return notice;
		
	}
}
