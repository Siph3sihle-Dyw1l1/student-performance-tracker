package za.ac.tut.web;

import java.io.IOException;
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
public class GetStudentByIDServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));

        Student s = sfl.find(id);
        request.setAttribute("s", s);

        request.getRequestDispatcher("get_student_by_id_outcome.jsp").forward(request, response);
    }

}
