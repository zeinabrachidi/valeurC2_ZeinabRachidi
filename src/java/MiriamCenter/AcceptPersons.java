/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author zeina
 */
@Entity
@Table(name = "accept_persons")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AcceptPersons.findAll", query = "SELECT a FROM AcceptPersons a")
    , @NamedQuery(name = "AcceptPersons.findByIdPerson", query = "SELECT a FROM AcceptPersons a WHERE a.acceptPersonsPK.idPerson = :idPerson")
    , @NamedQuery(name = "AcceptPersons.findByIdpersonType", query = "SELECT a FROM AcceptPersons a WHERE a.acceptPersonsPK.idpersonType = :idpersonType")
    , @NamedQuery(name = "AcceptPersons.findByAccepted", query = "SELECT a FROM AcceptPersons a WHERE a.accepted = :accepted")})
public class AcceptPersons implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected AcceptPersonsPK acceptPersonsPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "accepted")
    private boolean accepted;

    public AcceptPersons() {
    }

    public AcceptPersons(AcceptPersonsPK acceptPersonsPK) {
        this.acceptPersonsPK = acceptPersonsPK;
    }

    public AcceptPersons(AcceptPersonsPK acceptPersonsPK, boolean accepted) {
        this.acceptPersonsPK = acceptPersonsPK;
        this.accepted = accepted;
    }

    public AcceptPersons(int idPerson, int idpersonType) {
        this.acceptPersonsPK = new AcceptPersonsPK(idPerson, idpersonType);
    }

    public AcceptPersonsPK getAcceptPersonsPK() {
        return acceptPersonsPK;
    }

    public void setAcceptPersonsPK(AcceptPersonsPK acceptPersonsPK) {
        this.acceptPersonsPK = acceptPersonsPK;
    }

    public boolean getAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (acceptPersonsPK != null ? acceptPersonsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AcceptPersons)) {
            return false;
        }
        AcceptPersons other = (AcceptPersons) object;
        if ((this.acceptPersonsPK == null && other.acceptPersonsPK != null) || (this.acceptPersonsPK != null && !this.acceptPersonsPK.equals(other.acceptPersonsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MiriamCenter.AcceptPersons[ acceptPersonsPK=" + acceptPersonsPK + " ]";
    }
    
}
