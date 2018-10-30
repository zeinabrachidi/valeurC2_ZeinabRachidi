/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author zeina
 */
@Entity
@Table(name = "persontype")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Persontype.findAll", query = "SELECT p FROM Persontype p")
    , @NamedQuery(name = "Persontype.findByIdpersonType", query = "SELECT p FROM Persontype p WHERE p.idpersonType = :idpersonType")
    , @NamedQuery(name = "Persontype.findByPersonTypeDesc", query = "SELECT p FROM Persontype p WHERE p.personTypeDesc = :personTypeDesc")})
public class Persontype implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idpersonType")
    private Integer idpersonType;
    @Size(max = 10)
    @Column(name = "personTypeDesc")
    private String personTypeDesc;

    public Persontype() {
    }

    public Persontype(Integer idpersonType) {
        this.idpersonType = idpersonType;
    }

    public Integer getIdpersonType() {
        return idpersonType;
    }

    public void setIdpersonType(Integer idpersonType) {
        this.idpersonType = idpersonType;
    }

    public String getPersonTypeDesc() {
        return personTypeDesc;
    }

    public void setPersonTypeDesc(String personTypeDesc) {
        this.personTypeDesc = personTypeDesc;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idpersonType != null ? idpersonType.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Persontype)) {
            return false;
        }
        Persontype other = (Persontype) object;
        if ((this.idpersonType == null && other.idpersonType != null) || (this.idpersonType != null && !this.idpersonType.equals(other.idpersonType))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MiriamCenter.Persontype[ idpersonType=" + idpersonType + " ]";
    }
    
}
