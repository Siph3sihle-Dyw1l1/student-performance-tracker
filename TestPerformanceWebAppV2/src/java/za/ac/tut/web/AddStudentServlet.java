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
public class AddStudentServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long studNr = Long.parseLong(request.getParameter("studNr"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Integer age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        Double percentageMark = Double.parseDouble(request.getParameter("percentageMark"));

        Student s = createStud(studNr, name, surname, age, gender, percentageMark);
        sfl.create(s);

        request.getRequestDispatcher("add_student_outcome.jsp").forward(request, response);
    }

    private Student createStud(Long studNr, String name, String surname, Integer age, String gender, Double percentageMark) {
        Student s = new Student();
        s.setId(studNr);
        s.setFirstName(name);
        s.setLastName(surname);
        s.setAge(age);
        s.setGender(gender);
        s.setPercentageMark(percentageMark);

        return s;
    }

}
