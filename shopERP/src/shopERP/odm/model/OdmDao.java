package shopERP.odm.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.basic.mapper.ErpMapper;
import shopERP.basic.model.ProductList;
import shopERP.odm.mapper.OdmMapper;


public class OdmDao {
private static OdmDao dao = new OdmDao();
	
	public static OdmDao getInstance(){
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

	public List<ProductList> selectAllProducts(int startRow) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<ProductList> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).selectAllProducts(new RowBounds(startRow, 5));
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return list;
	}
	public List<ShoppingMall> shoppingMallList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<ShoppingMall> list = null;
		
		try {
			list = sqlSession.getMapper(OdmMapper.class).shoppingMallList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public List<OrderCollectList> collectOrderList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<OrderCollectList> list = null;
		try {
			list = sqlSession.getMapper(OdmMapper.class).collectOrderList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int insertClient(Clients c) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(OdmMapper.class).insertClient(c);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}

	public int maxClient() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int max = 0;
		try {
			max = sqlSession.getMapper(OdmMapper.class).maxClient();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return max;
	}

	public List<Clients> selectClientNames() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Clients> list = null;
		try {
			list = sqlSession.getMapper(OdmMapper.class).selectClientNames();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int insertOrderList(OrderList o) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(OdmMapper.class).insertOrderList(o);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}

	public int insertOrderDetail(OrderDetail od) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(OdmMapper.class).insertOrderDetail(od);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}

	public void updateOrderCollectDate(String shop_name) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(OdmMapper.class).updateOrderCollectDate(shop_name);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}

	public List<FullOrder> fullOrderList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<FullOrder> list = null;
		try {
			list = sqlSession.getMapper(OdmMapper.class).fullOrderList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int maxDeliveryList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int max = 0;
		try {
			max = sqlSession.getMapper(OdmMapper.class).maxDeliveryList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return max;
	}

	public Delivery deliveryList(String check) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Delivery delivery = new Delivery();
		try {
			delivery = sqlSession.getMapper(OdmMapper.class).deliveryList(check);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return delivery;
	}

	public int deliveryAdd(DeliveryList delivery) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(OdmMapper.class).deliveryAdd(delivery);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	public List<DeliveryList> selectDelivery() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<DeliveryList> list = null;
		try {
			list = sqlSession.getMapper(OdmMapper.class).selectDelivery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
}
