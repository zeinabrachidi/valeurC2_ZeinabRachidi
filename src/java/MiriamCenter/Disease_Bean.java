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
public class Disease_Bean implements Serializable {


/**
 *
 * @author zeina
 */
    private int iddisease;
    private String diseaseName;
  

    public Disease_Bean() {
    }

    public Disease_Bean(int iddisease) {
        this.iddisease = iddisease;
    }

    public int getIddisease() {
        return iddisease;
    }

    public void setIddisease(int iddisease) {
        this.iddisease = iddisease;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    @Override
    public String toString() {
        return "iddisease=" + iddisease + " diseaseName" + diseaseName ;
    }
    
}

