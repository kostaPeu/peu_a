package shopERP.purchase.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.purchase.mapper.ErpMapper;

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

	public int insertPurchase(Purchase purchase) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(ErpMapper.class).insertPurchase(purchase);
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

	public List<PurchaseListView> purchaseList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<PurchaseListView> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).purchaseList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public List<Customer> customerList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Customer> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).customerList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public List<Product> productList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Product> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).productList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public List<WareHouse> warehouseList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<WareHouse> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).warehouseList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public void updateStockAmount(Purchase purchase) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(ErpMapper.class).updateStockAmount(purchase);
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
	}

	public List<PurchaseSearch> searchPurchase() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<PurchaseSearch> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).searchPurchase();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public List<PurchaseListView> searchPurchaseList(Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<PurchaseListView> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).searchPurchaseList(search);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}
}
