package shopERP.sale.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.sale.mapper.ErpMapper;

public class ErpDao {
private static ErpDao dao = new ErpDao();
	
	public static ErpDao getInstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream input = null;
		
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public int insertSale(Sale sale) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(ErpMapper.class).insertSale(sale);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}

	public List<SaleListView> saleList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<SaleListView> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).saleList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public List<SaleListView> searchSaleList(Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<SaleListView> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).searchSaleList(search);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public int insertCbuy(Company_buy cbuy) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(ErpMapper.class).insertCbuy(cbuy);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}

	public List<Company_buyList> cBuyList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Company_buyList> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).cBuyList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}
}
