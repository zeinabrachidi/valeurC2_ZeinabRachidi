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
public class Speciality_Bean implements Serializable {
    private int idSpeciality;
    private String specialityDesc;

    public Speciality_Bean() {
    }

    public Speciality_Bean(int idSpeciality) {
        this.idSpeciality = idSpeciality;
    }

    public int getIdSpeciality() {
        return idSpeciality;
    }

    public void setIdSpeciality(int idSpeciality) {
        this.idSpeciality = idSpeciality;
    }

    public String getSpecialityDesc() {
        return specialityDesc;
    }

    public void setSpecialityDesc(String specialityDesc) {
        this.specialityDesc = specialityDesc;
    }

    @Override
    public String toString() {
        return "idSpeciality=" + idSpeciality + " specialityDesc" + specialityDesc;
    }    
}
