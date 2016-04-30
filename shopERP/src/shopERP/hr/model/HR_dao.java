package shopERP.hr.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.hr.mapper.HR_Mapper;

public class HR_dao {
	private static HR_dao dao = new HR_dao();

	public static HR_dao getInstance() {
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

	public String deptChecker(String b_id) {
		int result = 0;
		String rs = null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			result = sqlSession.getMapper(HR_Mapper.class).deptChecker(b_id);
			System.out.println(result);
			if (result > 0) {
				rs = "exist";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public String positionChecker(String b_id) {
		int result = 0;
		String rs = null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			result = sqlSession.getMapper(HR_Mapper.class)
					.positionChecker(b_id);
			System.out.println(result);
			if (result > 0) {
				rs = "exist";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public String jobChecker(String b_id) {
		int result = 0;
		String rs = null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			result = sqlSession.getMapper(HR_Mapper.class).jobChecker(b_id);
			System.out.println(result);
			if (result > 0) {
				rs = "exist";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public String dutyChecker(String b_id) {
		int result = 0;
		String rs = null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			result = sqlSession.getMapper(HR_Mapper.class).dutyChecker(b_id);
			System.out.println(result);
			if (result > 0) {
				rs = "exist";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public int deptInsert(hr_basic hrb) {
		int rs = -1;

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			rs = sqlSession.getMapper(HR_Mapper.class).deptInsert(hrb);
			if (rs > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public int positionInsert(hr_basic hrb) {
		int rs = -1;

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			rs = sqlSession.getMapper(HR_Mapper.class).positonInsert(hrb);
			if (rs > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public int jobInsert(hr_basic hrb) {
		int rs = -1;

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			rs = sqlSession.getMapper(HR_Mapper.class).jobInsert(hrb);
			if (rs > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public int dutyInsert(hr_basic hrb) {
		int rs = -1;

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			rs = sqlSession.getMapper(HR_Mapper.class).dutyInsert(hrb);
			if (rs > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rs;
	}

	public List<deptList> deptList() {
		List<deptList> list = null;

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			list = sqlSession.getMapper(HR_Mapper.class).deptList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
}
