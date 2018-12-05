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
public class AcceptPersons_Bean_Detail implements Serializable {

    private int idPerson;
    private String firstName;
    private String lastName;
    private int idpersonType;
    private String personTypeDesc;
    private boolean accepted;
    

    public AcceptPersons_Bean_Detail() {
    }
    
    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }
    
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
    
    public int getIdPersonType() {
        return idpersonType;
    }

    public void setIdPersonType(int idpersonType) {
        this.idpersonType = idpersonType;
    }
    
    public String getPersonTypeDesc() {
        return personTypeDesc;
    }

    public void setPersonTypeDesc(String personTypeDesc) {
        this.personTypeDesc = personTypeDesc;
    }
    
    public boolean getAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }

    @Override
    public String toString() {
        return "idPerson=" + idPerson + " firstName" + firstName + " lastName" + lastName + " idpersonType" + idpersonType +  " personTypeDesc" + personTypeDesc + "accepted"  + accepted;
    }
    
}

