package mvc.command;

import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.util.ConnectionProvider;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class UserIscartHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        System.out.println("userIscartHandler test");

        int userId = Integer.parseInt(request.getParameter("user_id"));
        int item = Integer.parseInt(request.getParameter("item"));

        System.out.println("userId : " + userId);
        System.out.println("item : " + item);

        try (Connection conn = ConnectionProvider.getConnection()) {
            OhoraDAO dao = new OhoraDAOImpl(conn);
            
            int test = dao.addTest(userId, item);
            
            // 임시로 리턴값 0 돌려서 장바구니 추가 뜨는지만 확인함
            // 로직 처리끝낸 후 갯수로 돌려서 requset 에 저장한 후 장바구니 버튼 옆에 갯수 띄어주면 되지않을까 싶음?
            System.out.println("test : " + test);
            
            response.setContentType("application/json; charset=UTF-8");
            
            try (PrintWriter out = response.getWriter()) {
                if (test == 0) {
                    out.write("{\"message\": \"장바구니에 추가되었습니다.\"}");
                } else {
                    out.write("{\"message\": \"추가 실패! 다시 시도하세요.\"}");
                }
                out.flush();
            }
            return null; // 응답 후 종료
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            return null;
        }
    }
}