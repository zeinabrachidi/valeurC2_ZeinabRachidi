/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author zeina
 */
@Embeddable
public class AcceptPersonsPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "idPerson")
    private int idPerson;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idpersonType")
    private int idpersonType;

    public AcceptPersonsPK() {
    }

    public AcceptPersonsPK(int idPerson, int idpersonType) {
        this.idPerson = idPerson;
        this.idpersonType = idpersonType;
    }

    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }

    public int getIdpersonType() {
        return idpersonType;
    }

    public void setIdpersonType(int idpersonType) {
        this.idpersonType = idpersonType;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idPerson;
        hash += (int) idpersonType;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AcceptPersonsPK)) {
            return false;
        }
        AcceptPersonsPK other = (AcceptPersonsPK) object;
        if (this.idPerson != other.idPerson) {
            return false;
        }
        if (this.idpersonType != other.idpersonType) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MiriamCenter.AcceptPersonsPK[ idPerson=" + idPerson + ", idpersonType=" + idpersonType + " ]";
    }
    
}
