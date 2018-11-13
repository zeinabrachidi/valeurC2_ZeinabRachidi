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
public class MedicineType_Bean implements Serializable {

    private static final long serialVersionUID = 1L;
    private int idMedicineType;
    private String medicineTypeDesc;

    public MedicineType_Bean() {
    }

    public MedicineType_Bean(int idMedicineType) {
        this.idMedicineType = idMedicineType;
    }

    public int getIdMedicineType() {
        return idMedicineType;
    }

    public void setIdMedicineType(int idMedicineType) {
        this.idMedicineType = idMedicineType;
    }

    public String getMedicineTypeDesc() {
        return medicineTypeDesc;
    }

    public void setMedicineTypeDesc(String medicineTypeDesc) {
        this.medicineTypeDesc = medicineTypeDesc;
    }

    @Override
    public String toString() {
        return "idMedicineType=" + idMedicineType + " medicineTypeDesc" + medicineTypeDesc;
    }
    
}

