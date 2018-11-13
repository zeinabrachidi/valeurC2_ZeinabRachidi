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
public class Vaccines_Bean implements Serializable {

    private int idvaccines;
    private String vaccinesName;


    public Vaccines_Bean() {
    }

    public Vaccines_Bean (int idvaccines) {
        this.idvaccines = idvaccines;
    }

    public int getIdvaccines() {
        return idvaccines;
    }

    public void setIdvaccines(int idvaccines) {
        this.idvaccines = idvaccines;
    }

    public String getVaccinesName() {
        return vaccinesName;
    }

    public void setVaccinesName(String vaccinesName) {
        this.vaccinesName = vaccinesName;
    }

    @Override
    public String toString() {
        return "idvaccines=" + idvaccines + " vaccinesName" + vaccinesName;
    }
    
}

