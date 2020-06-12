package chapter13.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();

	private BoardDBBean() {
	}

	public static BoardDBBean getInstance() {
		return instance;
	}

	public String doA() {
		return "연결";
	}

	public void insertArticle(BoardDataBean dataBean) {
		System.out.println(dataBean);
		// DB연결하는 객체
		Connection conn = null;

		// sql연결하는데 insert select update delete
		PreparedStatement pstmt = null;

		// jar 파일 연결확인 // Class.forName
		// Connection 객체 연결 // Drivermanager.getconnection();
		// preparedstatement 생성 // conn.prepareStatement();
		// 실행

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			// port = mysql : 3306, oracle : 1521 sqlserver : 1433
			conn = DriverManager.getConnection("jdbc:sqlserver://192.168.0.200:1433;databasename=sj_20200611", "sa",
					"8765432!");
			System.out.println("DB 연결 성공");
			pstmt = conn.prepareStatement("INSERT INTO [dbo].[board]" + "           ([num]" + "           ,[writer]"
					+ "           ,[email]" + "           ,[subject]" + "           ,[passwd]"
					+ "           ,[reg_date]" + "           ,[readcount]" + "           ,[ref]"
					+ "           ,[re_step]" + "           ,[re_level]" + "           ,[content]" + "           ,[ip])"
					+ "     VALUES" + "           ((select max(num)+1 as num from board)" + "           ,?"
					+ "           ,?" + "           ,?" + "           ,?" + "           ,GETDATE()" + "           ,0"
					+ "           ,0" + "           ,0" + "           ,0" + "           ,?"
					+ "           ,'192.168.0.21')");
			pstmt.setString(1,  dataBean.getWriter());
			pstmt.setString(2,  dataBean.getEmail());
			pstmt.setString(3,  dataBean.getSubject());
			pstmt.setString(4,  dataBean.getPasswd());
			pstmt.setString(5,  dataBean.getContent());
			
			pstmt.executeUpdate();
			System.out.println();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insertDetailArticle(String writer, String subject, String email, String content, String passwd) {
		System.out.println("writer = " + writer);
		System.out.println("subject = " + subject);
		System.out.println("email = " + email);
		System.out.println("content = " + content);
		System.out.println("passwd = " + passwd);
	}
}
