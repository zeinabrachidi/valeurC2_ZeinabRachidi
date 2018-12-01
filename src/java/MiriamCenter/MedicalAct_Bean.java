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
public class MedicalAct_Bean implements Serializable {

    private int idMedicalAct;
    private Date medicalActDate;
    private String medicalactDesc;
    private int idMedicalCard;
    
    public MedicalAct_Bean() {
    }

    public MedicalAct_Bean(int idMedicalAct) {
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

    @Override
    public String toString() {
        return "idMedicalAct=" + idMedicalAct + " medicalActDate"+ medicalActDate + " medicalactDesc" + medicalactDesc + "idMedicalCard" + idMedicalCard;
    }
    
}

