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
public class GetStudentByAgeServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer minAge = Integer.parseInt(request.getParameter("minAge"));
        Integer maxAge = Integer.parseInt(request.getParameter("maxAge"));
        
        List<Student> studList= sfl.findStudentsWithinAgeRange(minAge, maxAge);
        request.setAttribute("studList", studList);
        request.setAttribute("minAge", minAge);
        request.setAttribute("maxAge", maxAge);
        
        request.getRequestDispatcher("get_student_using_age_outcome.jsp").forward(request, response);
    }

}
