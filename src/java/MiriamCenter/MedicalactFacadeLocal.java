/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author zeina
 */
@Local
public interface MedicalactFacadeLocal {

    void create(Medicalact medicalact);

    void edit(Medicalact medicalact);

    void remove(Medicalact medicalact);

    Medicalact find(Object id);

    List<Medicalact> findAll();

    List<Medicalact> findRange(int[] range);

    int count();
    
}
