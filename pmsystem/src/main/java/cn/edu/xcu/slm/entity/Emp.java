package cn.edu.xcu.slm.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

/**
 * <p>
 * InnoDB free: 3072 kB; (`tid`) REFER `xcxy/t_dept`(`id`)
 * </p>
 *
 * @author nychenggu
 * @since 2019-11-15
 */
@TableName("t_emp")
public class Emp implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String ename;

    private Integer tid;

    private String job;

    private Double salary;

    private String photo;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate hiredate;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public LocalDate getHiredate() {
        return hiredate;
    }

    public void setHiredate(LocalDate hiredate) {
        this.hiredate = hiredate;
    }

    @Override
    public String toString() {
        return "Emp{" +
        "id=" + id +
        ", ename=" + ename +
        ", tid=" + tid +
        ", job=" + job +
        ", salary=" + salary +
        ", photo=" + photo +
        ", hiredate=" + hiredate +
        "}";
    }
}
