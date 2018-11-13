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
public class PersonType_Bean implements Serializable {
    private int idpersonType;
    private String personTypeDesc;

    public PersonType_Bean() {
    }

    public PersonType_Bean(int idpersonType) {
        this.idpersonType = idpersonType;
    }

    public int getIdpersonType() {
        return idpersonType;
    }

    public void setIdpersonType(int idpersonType) {
        this.idpersonType = idpersonType;
    }

    public String getPersonTypeDesc() {
        return personTypeDesc;
    }

    public void setPersonTypeDesc(String personTypeDesc) {
        this.personTypeDesc = personTypeDesc;
    }

    @Override
    public String toString() {
        return "idpersonType=" + idpersonType + " personTypeDesc" + personTypeDesc;
    }    
}
