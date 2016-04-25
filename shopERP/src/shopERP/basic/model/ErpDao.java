package shopERP.basic.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
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

	public List<Product> selectAllProducts() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Product> list = null;
		try {
			list = sqlSession.getMapper(ErpMapper.class).selectAllProducts();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return list;
	}
}
