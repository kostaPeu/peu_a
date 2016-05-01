package shopERP.groupware.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shopERP.groupware.action.Paging;
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

	public List<Notice> noticeList(Paging paging) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Notice> list = null;

		try {
			list = sqlSession.getMapper(GwMapper.class).noticeList(paging);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return list;
	}

	public List<Notice> noticeSearch(Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Notice> list = null;
		
		try {
			list = sqlSession.getMapper(GwMapper.class).noticeSearch(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}

	public List<NoticeReply> noticeReplyList(int notice_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<NoticeReply> list = null;
		
		try {
			list = sqlSession.getMapper(GwMapper.class).noticeReplyList(notice_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}

	public int noticeCount() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int count=0;
		
		try {
			count = sqlSession.getMapper(GwMapper.class).noticeCount();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count;
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

	public int noticeReplyInsert(NoticeReply noticeReply) {
		int re = -1;
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(GwMapper.class).noticeReplyInsert(noticeReply);
			
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

	public int noticeUpdate(Notice notice) {
		int re = -1;
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(GwMapper.class).noticeUpdate(notice);
			
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

	public Notice selectNotice(int notice_id) {
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

	public NoticeReply selectNoticeReply(int nreply_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		NoticeReply noticeReply = null;
		
		try {
			noticeReply = sqlSession.getMapper(GwMapper.class).selectNoticeReply(nreply_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return noticeReply;
		
	}

	public void noticeDelete(int notice_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			sqlSession.getMapper(GwMapper.class).noticeDelete(notice_id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	public void replyDelete(int nreply_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			sqlSession.getMapper(GwMapper.class).replyDelete(nreply_id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	public int loginIdCheck(String emp_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int check = -1;
		
		try {
			check = sqlSession.getMapper(GwMapper.class).loginIdCheck(emp_id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return check;
	}

	public String getPwd(String emp_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String pwd=null;
		
		try {
			pwd = sqlSession.getMapper(GwMapper.class).getPwd(emp_id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return pwd;
	}
}
