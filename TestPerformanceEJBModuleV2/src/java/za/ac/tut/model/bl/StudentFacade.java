package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author S DYWILI 230654182
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "TestPerformanceEJBModuleV2PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public Student find(String name, String surname) {
        Query query = em.createNamedQuery("find");
        query.setParameter("fname", name);
        query.setParameter("lname", surname);
        Student s = (Student) query.getSingleResult();
        return s;
    }

    @Override
    public Integer cntAllMaleStudents() {
        Query query = em.createNamedQuery("cntAllMaleStudents");
        Long cnt = (long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFemaleStudents() {
        Query query = em.createNamedQuery("cntAllFemaleStudents");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllPassedStudents() {
        Query query = em.createNamedQuery("cntAllPassedStudents");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFailedStudents() {
        Query query = em.createNamedQuery("cntAllFailedStudent");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllPassedMaleStudents() {
        Query query = em.createNamedQuery("cntAllPassedMaleStudents");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllPassedFemaleStudents() {
        Query query = em.createNamedQuery("cntAllPassedFemaleStudents");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFailedMaleStudents() {
        Query query = em.createNamedQuery("cntAllFailedMaleStudents");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFailedFemaleStudents() {
        Query query = em.createNamedQuery("cntAllFailedFemaleStudents");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public List<Student> findStudentsWithinAgeRange(Integer minAge, Integer maxAge) {
        Query query = em.createNamedQuery("findStudentsWithinAgeRange");
        query.setParameter("minAge", minAge);
        query.setParameter("maxAge", maxAge);
        List<Student> studList = query.getResultList();
        return studList;
    }

    @Override
    public Double getHighestMark() {
        Query query = em.createNamedQuery("getHighestMark");
        Double highestMark = (Double) query.getSingleResult();
        return highestMark;
    }

    @Override
    public Double getLowestMark() {
        Query query = em.createNamedQuery("getLowestMark");
        Double lowestMark = (Double) query.getSingleResult();
        return lowestMark;
    }

    @Override
    public Double getAvgMark() {
        Query query = em.createNamedQuery("getAvgMark");
        Double avgMark = (Double) query.getSingleResult();
        return avgMark;
    }

}
