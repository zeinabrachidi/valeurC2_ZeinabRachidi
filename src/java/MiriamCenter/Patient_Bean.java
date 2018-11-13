/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;
import java.util.*;

/**
 *
 * @author zeina
 */
public class Patient_Bean implements Serializable {
    private int idPerson;
    private int ssn;
    private String registerNo;
    private Date dob;
    private String bloodGrp;
    private int idNationality;
    private int idRegion;

    public Patient_Bean() {
    }

    public Patient_Bean(int idPerson) {
        this.idPerson = idPerson;
    }

    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }
    
    public int getISsn() {
        return ssn;
    }

    public void setSdn(int ssn) {
        this.ssn = ssn;
    }

    public String getRegisterNo() {
        return registerNo;
    }

    public void setRegisterNo(String registerNo) {
        this.registerNo = registerNo;
    }
    
    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }
    
    public String getBloodGrp() {
        return bloodGrp;
    }

    public void setbloodGrp(String bloodGrp) {
        this.bloodGrp = bloodGrp;
    }
    
    public int getIdNationality() {
        return idNationality;
    }

    public void setIdNationality(int idNationality) {
        this.idNationality = idNationality;
    }
    
    public int getIdRegion() {
        return idRegion;
    }

    public void setIdRegion(int idRegion) {
        this.idRegion = idRegion;
    }

    @Override
    public String toString() {
        return "idPerson=" + idPerson + " ssn" +  ssn + " registerNo" +  registerNo + " dob" + dob + " bloodGrp" + bloodGrp + " idNationality" + idNationality + " idRegion" + idRegion;
    } 
}

