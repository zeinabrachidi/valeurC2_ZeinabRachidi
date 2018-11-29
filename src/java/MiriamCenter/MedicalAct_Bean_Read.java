/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author zeina
 */
public class MedicalAct_Bean_Read implements Serializable {

    private int idMedicalAct;
    private Date medicalActDate;
    private Date medicalactTime;
    private String medicalactDesc;
    private int idMedicalCard;
    private Date emissionDate;
     private int IdPersonPat;
    private String Peron_Data;

    public MedicalAct_Bean_Read() {
    }

    public MedicalAct_Bean_Read(int idMedicalAct) {
        this.idMedicalAct = idMedicalAct;
    }

    public int getIdMedicalAct() {
        return idMedicalAct;
    }

    public void setIdMedicalAct(int idMedicalAct) {
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

    public int getIdMedicalCard() {
        return idMedicalCard;
    }

    public void setIdMedicalCard(int idMedicalCard) {
        this.idMedicalCard = idMedicalCard;
    }
    
    public Date getEmissionDate() {
        return emissionDate;
    }

    public void setEmissionDate(Date emissionDate) {
        this.emissionDate = emissionDate;
    }
    
   public int getIdPersonPat() {
        return IdPersonPat;
    }

    public void setIdPersonPat(int IdPersonPat) {
        this.IdPersonPat = IdPersonPat;
    }
    
    public String getPeron_Data() {
        return Peron_Data;
    }

    public void setPeron_Data(String Peron_Data) {
        this.Peron_Data = Peron_Data;
    }

    @Override
    public String toString() {
        return "idMedicalAct=" + idMedicalAct + " medicalActDate"+ medicalActDate + "medicalactTime" + medicalactTime + " medicalactDesc" + medicalactDesc + "idMedicalCard" + idMedicalCard + " emissionDate" + emissionDate + " IdPersonPat" + IdPersonPat + " Peron_Data" + Peron_Data ;
    }
    
}

