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
public class Consultation_Bean implements Serializable {

    private int idMedicalActCons;
    private int idPersonDoc;
    private int montant;
   

    public Consultation_Bean() {
    }

    public Consultation_Bean(int idMedicalActCons) {
        this.idMedicalActCons = idMedicalActCons;
    }

    public int getIdMedicalActCons() {
        return idMedicalActCons;
    }

    public void setIdMedicalActCons(int idMedicalActCons) {
        this.idMedicalActCons = idMedicalActCons;
    }

    public int getMontant() {
        return montant;
    }

    public void setMontant(int montant) {
        this.montant = montant;
    }

    public int getIdPersonDoc() {
        return idPersonDoc;
    }

    public void setIdPersonDoc(int idPersonDoc) {
        this.idPersonDoc = idPersonDoc;
    }

    public String toString() {
        return "idMedicalActCons=" + idMedicalActCons + " idPersonDo=c" + idPersonDoc + "montant=" + montant;
    }
}

