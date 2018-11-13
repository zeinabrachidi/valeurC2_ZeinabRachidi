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
public class Region_Bean implements Serializable {

    private int idRegion;
    private String regionName;
    private int idcity;

    public Region_Bean() {
    }

    public Region_Bean(int idRegion) {
        this.idRegion = idRegion;
    }

    public int getIdRegion() {
        return idRegion;
    }

    public void setIdRegion(int idRegion) {
        this.idRegion = idRegion;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    public int getIdcity() {
        return idcity;
    }

    public void setIdcity(int idcity) {
        this.idcity = idcity;
    }

    @Override
    public String toString() {
        return "idRegion=" + idRegion + " regionName" + regionName + " idcity" + idcity;
    } 
}

