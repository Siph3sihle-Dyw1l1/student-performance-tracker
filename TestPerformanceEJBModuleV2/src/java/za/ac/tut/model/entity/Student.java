package za.ac.tut.model.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author S DYWILI 230654182
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "cntAllMaleStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.gender ='M'")
    ,
    @NamedQuery(name = "cntAllFemaleStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.gender = 'F'")
    ,
    @NamedQuery(name = "cntAllPassedStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.percentageMark >= 50.0")
    ,
    @NamedQuery(name = "cntAllFailedStudent", query = "SELECT COUNT(s) FROM Student s WHERE s.percentageMark < 50.0")
    ,
    @NamedQuery(name = "cntAllPassedMaleStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.gender = 'M' AND s.percentageMark >= 50.0")
    ,
    @NamedQuery(name = "cntAllPassedFemaleStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.gender = 'F' AND s.percentageMark >= 50.0")
    ,
    @NamedQuery(name = "cntAllFailedMaleStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.gender = 'M' AND s.percentageMark < 50.0")
    ,
    @NamedQuery(name = "cntAllFailedFemaleStudents", query = "SELECT COUNT(s) FROM Student s WHERE s.gender = 'F' AND s.percentageMark < 50.0")
    ,
    @NamedQuery(name = "find", query = "SELECT s FROM Student s WHERE s.firstName = :fname AND s.lastName = :lname")
    ,
    @NamedQuery(name = "findStudentsWithinAgeRange", query = "SELECT s FROM Student s WHERE s.age >= :minAge AND s.age <= :maxAge")
    ,
    @NamedQuery(name = "getHighestMark", query = "SELECT MAX(s.percentageMark) FROM Student s")
    ,
    @NamedQuery(name = "getLowestMark", query = "SELECT MIN(s.percentageMark) FROM Student s")
    ,
    @NamedQuery(name = "getAvgMark", query = "SELECT AVG(s.percentageMark) FROM Student s")
})
public class Student implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String lastName;
    private String gender;
    private Integer age;
    private Double percentageMark;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Double getPercentageMark() {
        return percentageMark;
    }

    public void setPercentageMark(Double percentageMark) {
        this.percentageMark = percentageMark;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Student)) {
            return false;
        }
        Student other = (Student) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.Student[ id=" + id + " ]";
    }

}
