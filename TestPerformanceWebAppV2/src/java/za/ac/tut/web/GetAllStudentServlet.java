package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author S DYWILI 230654182
 */
public class GetAllStudentServlet extends HttpServlet {
@EJB
private StudentFacadeLocal sfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Student> studList = sfl.findAll();
        
        request.setAttribute("studList", studList);
        
        request.getRequestDispatcher("get_all_students.jsp").forward(request, response);
    }

    

}
