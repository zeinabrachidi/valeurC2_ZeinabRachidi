/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author zeina
 */
@Entity
@Table(name = "medicalact")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Medicalact.findAll", query = "SELECT m FROM Medicalact m")
    , @NamedQuery(name = "Medicalact.findByIdMedicalAct", query = "SELECT m FROM Medicalact m WHERE m.idMedicalAct = :idMedicalAct")
    , @NamedQuery(name = "Medicalact.findByMedicalActDate", query = "SELECT m FROM Medicalact m WHERE m.medicalActDate = :medicalActDate")
    , @NamedQuery(name = "Medicalact.findByMedicalactTime", query = "SELECT m FROM Medicalact m WHERE m.medicalactTime = :medicalactTime")
    , @NamedQuery(name = "Medicalact.findByMedicalactDesc", query = "SELECT m FROM Medicalact m WHERE m.medicalactDesc = :medicalactDesc")})
public class Medicalact implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idMedicalAct")
    private Integer idMedicalAct;
    @Column(name = "medicalActDate")
    @Temporal(TemporalType.DATE)
    private Date medicalActDate;
    @Column(name = "medicalactTime")
    @Temporal(TemporalType.TIME)
    private Date medicalactTime;
    @Size(max = 300)
    @Column(name = "medicalactDesc")
    private String medicalactDesc;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "medicalact")
    private Consultation consultation;
    @JoinColumn(name = "idMedicalCard", referencedColumnName = "idmedicaCard")
    @ManyToOne
    private Medicalcard idMedicalCard;

    public Medicalact() {
    }

    public Medicalact(Integer idMedicalAct) {
        this.idMedicalAct = idMedicalAct;
    }

    public Integer getIdMedicalAct() {
        return idMedicalAct;
    }

    public void setIdMedicalAct(Integer idMedicalAct) {
        this.idMedicalAct = idMedicalAct;
    }

    public Date getMedicalActDate() {
        return medicalActDate;
    }

    public void setMedicalActDate(Date medicalActDate) {
        this.medicalActDate = medicalActDate;
    }

    public Date getMedicalactTime() {
        return medicalactTime;
    }

    public void setMedicalactTime(Date medicalactTime) {
        this.medicalactTime = medicalactTime;
    }

    public String getMedicalactDesc() {
        return medicalactDesc;
    }

    public void setMedicalactDesc(String medicalactDesc) {
        this.medicalactDesc = medicalactDesc;
    }

    public Consultation getConsultation() {
        return consultation;
    }

    public void setConsultation(Consultation consultation) {
        this.consultation = consultation;
    }

    public Medicalcard getIdMedicalCard() {
        return idMedicalCard;
    }

    public void setIdMedicalCard(Medicalcard idMedicalCard) {
        this.idMedicalCard = idMedicalCard;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idMedicalAct != null ? idMedicalAct.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Medicalact)) {
            return false;
        }
        Medicalact other = (Medicalact) object;
        if ((this.idMedicalAct == null && other.idMedicalAct != null) || (this.idMedicalAct != null && !this.idMedicalAct.equals(other.idMedicalAct))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MiriamCenter.Medicalact[ idMedicalAct=" + idMedicalAct + " ]";
    }
    
}
