package shopERP.accounting.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.accounting.mapper.AccountingMapper;

public class AcDao {

	private static AcDao dao = new AcDao();

	public static AcDao getInstance() {
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

	// 통장계좌 신규 추가//
	public int insertAccount(Accounts accounts) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(AccountingMapper.class).insertAccount(accounts);
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

	// 통장계좌 리스트//
	public List<Accounts> accountlist() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Accounts> list = null;
		try {
			list = sqlSession.getMapper(AccountingMapper.class).accountlist();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
//통장업데이트//
	
	public int updateAccount(Accounts accounts){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(AccountingMapper.class).updateAccount(accounts);
			if (re >0){
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
	return re;
	}
	

	// 신용카드 Start//
	public int insertCard(Cards cards) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(AccountingMapper.class).insertCard(cards);
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

	public List<Cards> cardlist() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Cards> list = null;
		try {
			list = sqlSession.getMapper(AccountingMapper.class).cardlist();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}// 신규카드 END//

	// 자금계획 Start
	public int insertMoneyPlan(MoneyPlan plan) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(AccountingMapper.class).insertMoneyPlan(
					plan);
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

	public List<MoneyPlan> MoneyPlanList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<MoneyPlan> list = null;
		try {
			list = sqlSession.getMapper(AccountingMapper.class).MoneyPlanList();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;

	}
}
