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
public class Street_Bean implements Serializable {
    private int idStreet;
    private String streetName;
    private int idRegion;

    public Street_Bean() {
    }

    public Street_Bean(int idStreet) {
        this.idStreet = idStreet;
    }

    public int getIdStreet() {
        return idStreet;
    }

    public void setIdStreet(int idStreet) {
        this.idStreet = idStreet;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public int getIdRegion() {
        return idRegion;
    }

    public void setIdRegion(int idRegion) {
        this.idRegion = idRegion;
    }

    @Override
    public String toString() {
        return "idStreet=" + idStreet + " streetName" + streetName + "idRegion" + idRegion;
    }
    
}

