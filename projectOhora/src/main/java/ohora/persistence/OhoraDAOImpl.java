package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.util.ConnectionProvider;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ohora.domain.DeptVO;
import ohora.domain.PagingVO;
import ohora.domain.ProductDTO;
import ohora.domain.UserDTO;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OhoraDAOImpl implements OhoraDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public OhoraDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public ArrayList<DeptVO> selectTest() throws SQLException {
		int deptno;
		String dname;
		String loc;
		
		ArrayList<DeptVO> list = null;
		String sql = "SELECT * FROM dept";
		
		DeptVO dvo = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<DeptVO>();
				do {

					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");
					loc = rs.getString("loc");

					dvo = new DeptVO().builder()
							.deptno(deptno)
							.dname(dname)
							.loc(loc)
							.build();

					list.add(dvo);

				} while (rs.next());
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	@Override
	public int getTotalRecords() throws SQLException {
		int totalRecords = 0;
		String sql = null;
		sql = "SELECT COUNT(*) FROM O_PRODUCT ";
		
		this.pstmt = this.conn.prepareStatement(sql);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalRecords;
	}

	@Override
	public int getTotalRecords(int categoryNumber) throws SQLException {
		int totalRecords = 0;
		String sql = null;

		sql = "SELECT COUNT(*) FROM O_PRODUCT WHERE CAT_ID = ? ";	

		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, categoryNumber);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalRecords;
	}

	@Override
	public int getTotalRecords(String searchCondition, String searchWord) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		int totalPages = 0;
		String sql = "SELECT CEIL(COUNT(*)/?) FROM O_PRODUCT";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalPages = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalPages;
	}

	@Override
	public int getTotalPages(int numberPerPage, String searchCondition, String searchWord) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ProductDTO> select(int currentPage, int numberPerPage) throws SQLException {

		String pdt_name;
		int pdt_amount;
		int pdt_discount_rate;
		String pdt_img_url;
		int pdt_review_count;
		int pdt_discount_amount;
		
		ArrayList<ProductDTO> list = null;
		
		
		
		String sql = "SELECT * FROM ( "
				+ "SELECT ROWNUM no, t.* FROM ("
				+ "SELECT pdt_name, pdt_amount, pdt_discount_rate, pdt_img_url, pdt_review_count, pdt_adddate "
				+ "FROM O_PRODUCT "
				// + "ORDER BY pdt_adddate DESC "
				+ ") t "
				+ ") b "
				+ "WHERE no BETWEEN ? AND ? ";
		
		ProductDTO pdt = null;
		int start = (currentPage-1) * numberPerPage + 1;
		int end = start + numberPerPage -1;
		int totalRecords = getTotalRecords();
		if (end > totalRecords) end = totalRecords;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<ProductDTO>();
				do {

					pdt_name = rs.getString("pdt_name");
					pdt_amount = rs.getInt("pdt_amount");
					pdt_discount_rate = rs.getInt("pdt_discount_rate");
					pdt_img_url = rs.getString("pdt_img_url");
					pdt_review_count = rs.getInt("pdt_review_count");
					
					if (pdt_discount_rate != 0) {
						pdt_discount_amount = pdt_amount - (pdt_amount / pdt_discount_rate);						
					} else {
						pdt_discount_amount = pdt_amount;
					}

					pdt = new ProductDTO().builder()
							.pdt_name(pdt_name)
							.pdt_amount(pdt_amount)
							.pdt_discount_rate(pdt_discount_rate)
							.pdt_img_url(pdt_img_url)
							.pdt_review_count(pdt_review_count)
							.pdt_discount_amount(pdt_discount_amount)
							.build();

					list.add(pdt);

				} while (rs.next());
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	// 로그인 처리 시작
	@Override
	public int loginNum(String id, String password) throws SQLException {
		
		String sql = "SELECT user_password, user_id FROM o_user WHERE user_login_id = ?";
		
		System.out.println("dao : " + id);
		System.out.println("dao : " + password);
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String dbPassword = rs.getString("user_password");
				int dbUserId = rs.getInt("user_id");
				
				if(dbPassword.equals(password)) {
					return dbUserId;
				} // if
			} // if
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
		}
		
		return -1;
	
	}
	// 로그인 처리 끝
	
	// 아이디 찾기 시작
	@Override
	public String findUser(UserDTO user) {
		
		String sql;
		String name = user.getUser_name();
		String email = user.getUser_email();
		String phone = user.getUser_tel();
		
		System.out.println("dao name : " + name + "\n");
		System.out.println("dao email : " + email + "\n");
		System.out.println("dao phone : " + phone + "\n");
		
		try {
			
			if (phone.equals("")) {
	            sql = "SELECT user_login_id, user_name, user_email FROM o_user WHERE user_name = ? AND user_email = ?";
	        } else {
	            sql = "SELECT user_login_id, user_name, user_tel FROM o_user WHERE user_name = ? AND user_tel = ?";
	        } // if else
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			
			if (phone.equals("")) {
				pstmt.setString(2, email);
			} else {
				pstmt.setString(2, phone);
			} // if else
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				String dbUserLoginId = rs.getString("user_login_id");
				return dbUserLoginId;
				
				/*
				if( phone == null ) {
					String dbUserEmail = rs.getString("user_email");
					if (email.equals(dbUserEmail)) {
						return dbUserLoginId;
					} // if
				} else {
					String dbUserPhone = rs.getString("user_tel");
					if (phone.equals(dbUserPhone)) {
						return dbUserLoginId;
					} // if
				} // if else
				*/
				
			} // if
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			} // try catch
			
		} // try catch finally
		
		return null;
		
	}
	// 아이디 찾기 끝
	
	// 비밀번호 찾기 시작
	@Override
	public boolean findPasswd(UserDTO userFindPasswd) {
		
		String sql;
		String userID = userFindPasswd.getUser_login_id();
		String name = userFindPasswd.getUser_name();
		String email = userFindPasswd.getUser_email();
		String phone = userFindPasswd.getUser_tel();
		
		// 값 출력 test
		System.out.println("dao userID : " + userID);
		System.out.println("dao name : " + name);
		System.out.println("dao email : " + email);
		System.out.println("dao phone : " + phone);
		
		try {
			
			if (phone == null) {
				sql = " SELECT user_password ";
				sql += " FROM o_user ";
				sql += " WHERE user_login_id = ? AND user_name = ? AND user_email = ? ";
			} else {
				sql = " SELECT user_password ";
				sql += " FROM o_user ";
				sql += " WHERE user_login_id = ? AND user_name = ? AND user_tel = ? ";
			} // if else
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userID);
			pstmt.setString(2, name);
			
			if (phone == null) {
				pstmt.setString(3, email);
			} else {
				pstmt.setString(3, phone);
			} // if else
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				return true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			} // try catch
		} // try catch finally
		
		
		return false;
		
	}
	// 비밀번호 찾기 끝
	
	// 비밀번호 변경 시작
	@Override
	public int changePasswd(String confirmPassword, String userID) {
		
		System.out.println("dao password : " + confirmPassword);
		System.out.println("dao id : " + userID);
		
		String sql;
		
		try {
			
			sql = " update o_user ";
			sql += " set user_password = ? ";
			sql += " where user_login_id = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, confirmPassword);
			pstmt.setString(2, userID);
			
			int num = pstmt.executeUpdate();
			
			return num;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			} // try catch
		} // try catch finally
		
		return -1;
		
	}
	// 비밀번호 변경 끝
	
	// 회원 장바구니 ajax test
	@Override
	public int addTest(int userId, int item) {
		
		System.out.println("dao userId : " + userId);
		System.out.println("dao item : " + item);
		
		String sql;
		
		try {
			
			// 여기서 장바구니 인서트 쿼리 필요
			
			// 어떤식으로 줘야될지 모르겠음 / ajax 처리 틀만 짬
			
			// 로직 처리도 필요 / * 같은 상품을 눌렀을 때는 db 내부에서 수량만 증가하지 장바구니 버튼 옆에 갯수가 늘어나진 않음
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		} // try catch finally
		
		return 0;
		
	}
	
}
