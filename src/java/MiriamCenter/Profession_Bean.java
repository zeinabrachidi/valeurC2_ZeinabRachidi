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
public class Profession_Bean implements Serializable {

    private int idProfession;
    private String professionName;

    public Profession_Bean() {
    }

    public Profession_Bean(int idProfession) {
        this.idProfession = idProfession;
    }

    public int getIdProfession() {
        return idProfession;
    }

    public void setIdProfession(int idProfession) {
        this.idProfession = idProfession;
    }

    public String getProfessionName() {
        return professionName;
    }

    public void setProfessionName(String professionName) {
        this.professionName = professionName;
    }


    @Override
    public String toString() {
        return "idProfession=" + idProfession + " professionName" + professionName;
    }
}
