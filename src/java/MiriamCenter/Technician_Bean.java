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
public class Technician_Bean implements Serializable {

    private int idPerson;

    public Technician_Bean() {
    }

    public Technician_Bean(int idPerson) {
        this.idPerson = idPerson;
    }

    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }

    @Override
    public String toString() {
        return "idPerson=" + idPerson ;
    }    
}
