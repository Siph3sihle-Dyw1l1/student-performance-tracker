package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author S DYWILI 230654182
 */
@Local
public interface StudentFacadeLocal {

    void create(Student student);

    void edit(Student student);

    void remove(Student student);

    Student find(Object id);

    List<Student> findAll();

    List<Student> findRange(int[] range);

    int count();

    //JPQL
    Student find(String name, String surname);

    Integer cntAllMaleStudents();

    Integer cntAllFemaleStudents();

    Integer cntAllPassedStudents();

    Integer cntAllFailedStudents();

    Integer cntAllPassedMaleStudents();

    Integer cntAllPassedFemaleStudents();

    Integer cntAllFailedMaleStudents();

    Integer cntAllFailedFemaleStudents();

    List<Student> findStudentsWithinAgeRange(Integer minAge, Integer maxAge);

    Double getHighestMark();

    Double getLowestMark();

    Double getAvgMark();
}
