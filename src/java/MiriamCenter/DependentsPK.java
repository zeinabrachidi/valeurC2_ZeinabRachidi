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
public class DependentsPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "iIdPersonPers")
    private int iIdPersonPers;
    @Basic(optional = false)
    @NotNull
    @Column(name = "IdPersonPat")
    private int idPersonPat;

    public DependentsPK() {
    }

    public DependentsPK(int iIdPersonPers, int idPersonPat) {
        this.iIdPersonPers = iIdPersonPers;
        this.idPersonPat = idPersonPat;
    }

    public int getIIdPersonPers() {
        return iIdPersonPers;
    }

    public void setIIdPersonPers(int iIdPersonPers) {
        this.iIdPersonPers = iIdPersonPers;
    }

    public int getIdPersonPat() {
        return idPersonPat;
    }

    public void setIdPersonPat(int idPersonPat) {
        this.idPersonPat = idPersonPat;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) iIdPersonPers;
        hash += (int) idPersonPat;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DependentsPK)) {
            return false;
        }
        DependentsPK other = (DependentsPK) object;
        if (this.iIdPersonPers != other.iIdPersonPers) {
            return false;
        }
        if (this.idPersonPat != other.idPersonPat) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MiriamCenter.DependentsPK[ iIdPersonPers=" + iIdPersonPers + ", idPersonPat=" + idPersonPat + " ]";
    }
    
}
