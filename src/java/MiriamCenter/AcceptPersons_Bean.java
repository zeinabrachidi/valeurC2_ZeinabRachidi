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
public class AcceptPersons_Bean implements Serializable {

    private int idPerson;
    private int idpersonType;
    private boolean accepted;
    

    public AcceptPersons_Bean() {
    }
    
    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }
    
    public int getIdPersonType() {
        return idpersonType;
    }

    public void setIdPersonType(int idpersonType) {
        this.idpersonType = idpersonType;
    }
    public boolean getAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }

    @Override
    public String toString() {
        return "idPerson=" + idPerson + " idpersonType" + idpersonType + " accepted"  + accepted;
    }
    
}

