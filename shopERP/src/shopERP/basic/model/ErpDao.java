package shopERP.basic.model;

import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.basic.mapper.ErpMapper;

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

	public int insertProduct(Product product) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(ErpMapper.class).insertProduct(product);
			if(re > 0){
				sqlSession.commit();	//commit()을 해야 데이터가 들어감
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return re;
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

	public int updateProduct(Product product) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(ErpMapper.class).updateProduct(product);
			if(re > 0){
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return re;
	}

	public int deleteProduct(String check) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(ErpMapper.class).deleteProduct(check);
			if(re > 0){
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{

			sqlSession.close();
		}
		return re;
	}
	public int insertCustomer(Customer customer) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(ErpMapper.class).insertCustomer(customer);
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

	public List<Customer> customerList(int startRow) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Customer> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).customerList(new RowBounds(startRow, 5));
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}

	public Integer totalCount() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(ErpMapper.class).totalCount();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
		}

	public int totalCountProduct() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(ErpMapper.class).totalCountProduct();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}
}
