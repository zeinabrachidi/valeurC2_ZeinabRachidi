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
@Table(name = "profession")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Profession.findAll", query = "SELECT p FROM Profession p")
    , @NamedQuery(name = "Profession.findByIdProfession", query = "SELECT p FROM Profession p WHERE p.idProfession = :idProfession")
    , @NamedQuery(name = "Profession.findByProfessionName", query = "SELECT p FROM Profession p WHERE p.professionName = :professionName")})
public class Profession implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idProfession")
    private Integer idProfession;
    @Size(max = 15)
    @Column(name = "professionName")
    private String professionName;

    public Profession() {
    }

    public Profession(Integer idProfession) {
        this.idProfession = idProfession;
    }

    public Integer getIdProfession() {
        return idProfession;
    }

    public void setIdProfession(Integer idProfession) {
        this.idProfession = idProfession;
    }

    public String getProfessionName() {
        return professionName;
    }

    public void setProfessionName(String professionName) {
        this.professionName = professionName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idProfession != null ? idProfession.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Profession)) {
            return false;
        }
        Profession other = (Profession) object;
        if ((this.idProfession == null && other.idProfession != null) || (this.idProfession != null && !this.idProfession.equals(other.idProfession))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MiriamCenter.Profession[ idProfession=" + idProfession + " ]";
    }
    
}
