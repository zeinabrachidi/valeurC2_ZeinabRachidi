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
public class Medicine_Bean implements Serializable {

    private static final long serialVersionUID = 1L;
    private int idMedicine;
    private String medicineName;
    private int idFamily;

    public Medicine_Bean() {
    }

    public Medicine_Bean(int idMedicine) {
        this.idMedicine = idMedicine;
    }

    public int getIdMedicine() {
        return idMedicine;
    }

    public void setIdMedicine(int idMedicine) {
        this.idMedicine = idMedicine;
    }

    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }
    public int getIdFamily() {
        return idFamily;
    }

    public void setIdFamily(int idFamily) {
        this.idFamily = idFamily;
    }

    @Override
    public String toString() {
        return "idMedicine=" + idMedicine + " medicineName" + medicineName + " idFamily" + idFamily;
    }
    
}
