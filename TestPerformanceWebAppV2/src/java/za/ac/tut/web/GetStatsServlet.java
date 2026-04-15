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
public class GetStatsServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer totalStud = sfl.count();
        Integer cntAllStudPassed = sfl.cntAllPassedStudents();
        Integer cntAllStudFailed = sfl.cntAllFailedStudents();
        Integer cntAllMaleStud = sfl.cntAllMaleStudents();
        Integer cntAllFemaleStud = sfl.cntAllFemaleStudents();
        Integer cntAllMaleStudPassed = sfl.cntAllPassedMaleStudents();
        Integer cntAllFemaleStudPassed = sfl.cntAllPassedFemaleStudents();
        Integer cntAllMaleStudFailed = sfl.cntAllFailedMaleStudents();
        Integer cntAllFemaleStudFailed = sfl.cntAllFailedFemaleStudents();
        Double highestMark = sfl.getHighestMark();
        Double lowestMark = sfl.getLowestMark();
        Double avgMark = sfl.getAvgMark();

        List<Student> studList = sfl.findAll();

        request.setAttribute("totalStud", totalStud);
        request.setAttribute("cntAllStudPassed", cntAllStudPassed);
        request.setAttribute("cntAllStudFailed", cntAllStudFailed);
        request.setAttribute("cntAllMaleStud", cntAllMaleStud);
        request.setAttribute("cntAllFemaleStud", cntAllFemaleStud);
        request.setAttribute("cntAllMaleStudPassed", cntAllMaleStudPassed);
        request.setAttribute("cntAllFemaleStudPassed", cntAllFemaleStudPassed);
        request.setAttribute("cntAllMaleStudFailed", cntAllMaleStudFailed);
        request.setAttribute("cntAllFemaleStudFailed", cntAllFemaleStudFailed);
        request.setAttribute("highestMark", highestMark);
        request.setAttribute("lowestMark", lowestMark);
        request.setAttribute("avgMark", avgMark);
        request.setAttribute("studList", studList);

        request.getRequestDispatcher("get_statistics_outcome.jsp").forward(request, response);
    }
}
