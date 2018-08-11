package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.koreait.dto.BoardVO;

import until.DBManager;

public class BoardDAO {
	// CRUD
	// 1. db연동
	// 2. insert/select/update/delete
	// --> try{}catch(){} : DBManager
	private BoardDAO() {
	}

	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}

	/**
	 * 글 목록을 모두 가져와라! - list에서 사용할 예정 페이징 처리(sub-query 이용)
	 */
	// #9] BoardListAction에서 넘어왔다
	public List<BoardVO> selectAllBoards() {

		List<BoardVO> list = new ArrayList<BoardVO>();

		String sql = "select * from board order by num desc";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		BoardVO vo = null;
		try {
			conn = DBManager.getConnectin();
			stmt = conn.createStatement(); // conn.prepareStatement(sql);

			rs = stmt.executeQuery(sql); // pstmt.executeQuery();

			while (rs.next()) { // 행 단위 변화
				vo = new BoardVO();
				vo.setNum(rs.getInt("NuM"));
				vo.setPass(rs.getString("pass"));
				vo.setName(rs.getString("name"));
				vo.setEmail(rs.getString("email"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setWritedate(rs.getTimestamp("writedate"));

				list.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			DBManager.close(conn, stmt, rs);

		}
		// #10] BoardListAction으로 가자!!!!!
		return list;
	}

	/**
	 * 데이터 삽입
	 * 
	 * @param vo
	 */
	// #33] 만들어오기!
	public void insertBoard(BoardVO vo) {
		String sql = "insert into board(num, name, email, pass, title, content) values("
				+ "board_SEq.nextval, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnectin();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getEmail());
			pstmt.setString(3, vo.getPass());
			pstmt.setString(4, vo.getTitle());
			pstmt.setString(5, vo.getContent()); // 문장 완성됐다~

			// int result = pstmt.executeUpdate(); //result 에는 insert 실행 row수가
			// 담기게 된다.
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		// #34] 다시 BoardWriteAction으로 가자!
	}

	/**
	 * 뷰를 볼 때, 조회수를 증가시키자
	 */
	//#77] (제목 클릭시 조회수 1증가) &  수정에서 넘어왔다.
	public void updateReadCount(String num) {
		String sql = "update board set readcount = readcount+1 where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnectin();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		//#78] 복귀
	}

	/**
	 * 글번호 한건에 대한 모든 내용(6개 컬럼)을 읽어 와서 리턴 시키자!
	 * 
	 * @param num
	 * @return
	 */
	// #45] 한 건 갖고 돌아가자!
	public BoardVO selectOneBoard(String num) {

		String sql = "select * from board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO vo = null;
		try {
			conn = DBManager.getConnectin();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) { // 글 한건!
				vo = new BoardVO();
				vo.setNum(rs.getInt("NuM"));
				vo.setPass(rs.getString("pass"));
				vo.setName(rs.getString("name"));
				vo.setEmail(rs.getString("email"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setWritedate(rs.getTimestamp("writedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		// #46] BoardViewAction으로 돌아가자
		return vo;

	}

	// #67] 비번 체크하고 글 한건 리턴 시키자
	public BoardVO checkPassword(String num, String pass) {
		String sql = "select * from board where num=? and pass=?";
		//String sql = "select * from board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO vo = null;
		try {
			conn = DBManager.getConnectin();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			
			vo = new BoardVO();
			if (rs.next()) { // 글 한건!
				vo.setNum(rs.getInt("NuM"));
				vo.setPass(rs.getString("pass"));
				vo.setName(rs.getString("name"));
				vo.setEmail(rs.getString("email"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setWritedate(rs.getTimestamp("writedate"));
			}else{
				vo.setPass("");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		// #68] BoardCheckpassAction으로 가자
		return vo;
	}

	/**
	 * 수정할 내용을 vo에 저장시켜서 온다.
	 */
	//#88] 글 쓰러 왔다.
	public void updateBoard(BoardVO vo) {
		String sql = "update board set name=?, email=?, pass=?, title=?, content=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnectin();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getEmail());
			pstmt.setString(3, vo.getPass());
			pstmt.setString(4, vo.getTitle());
			pstmt.setString(5, vo.getContent());
			pstmt.setInt(6, vo.getNum()); // 문장 완성됐다~
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		//#89] 리턴!
	}

	/**
	 * 글번호에 해당하는 레코드를 db에서 삭제한다.
	 * 
	 * @param num
	 */
	public void deleteBoard(String num) {
		String sql = "delete from board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnectin();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}
