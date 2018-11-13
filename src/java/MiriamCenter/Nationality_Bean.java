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
public class Nationality_Bean implements Serializable {
    private int idNationality;
    private String nationalityName;

    public Nationality_Bean() {
    }

    public Nationality_Bean(int idNationality) {
        this.idNationality = idNationality;
    }

    public int getIdNationality() {
        return idNationality;
    }

    public void setIdNationality(Integer idNationality) {
        this.idNationality = idNationality;
    }

    public String getNationalityName() {
        return nationalityName;
    }

    public void setNationalityName(String nationalityName) {
        this.nationalityName = nationalityName;
    }

    @Override
    public String toString() {
        return "idNationality=" + idNationality + " nationalityName" + nationalityName;
    }   
}
