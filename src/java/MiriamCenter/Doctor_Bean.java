/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;

/**
 *
 * @author zeina
 */
public class Doctor_Bean implements Serializable {
    private int idPerson;
    private String syndicatNo;
    private int idSpeciality;

    public Doctor_Bean() {
    }

    public Doctor_Bean(int idPerson) {
        this.idPerson = idPerson;
    }

    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }

    public String getSyndicatNo() {
        return syndicatNo;
    }

    public void setSyndicatNo(String syndicatNo) {
        this.syndicatNo = syndicatNo;
    }
    
    public int getIdSpeciality() {
        return idSpeciality;
    }

    public void setIdSpeciality(int idSpeciality) {
        this.idSpeciality = idSpeciality;
    }

    @Override
    public String toString() {
        return "idPerson=" + idPerson + " syndicatNo" + syndicatNo + " idSpeciality" +  idSpeciality;
    } 
}

