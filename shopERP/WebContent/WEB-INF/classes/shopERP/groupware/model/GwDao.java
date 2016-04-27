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
      List<Notice> list = null;
            
      try {
         list = sqlSession.getMapper(GwMapper.class).noticeList();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         sqlSession.close();
      }

      return list;
   }

   public String getEmpName(String emp_id) {
      SqlSession sqlSession = getSqlSessionFactory().openSession();
      String name = null;
      
      try {
         name = sqlSession.getMapper(GwMapper.class).getEmpName(emp_id);
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         sqlSession.close();
      }

      return name;
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
      Notice notice = null;
      
      try {
         notice = sqlSession.getMapper(GwMapper.class).selectNotice(notice_id);
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         sqlSession.close();
      }
      
      return notice;
      
   }
}