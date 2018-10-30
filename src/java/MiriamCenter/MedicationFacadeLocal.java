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
public interface MedicationFacadeLocal {

    void create(Medication medication);

    void edit(Medication medication);

    void remove(Medication medication);

    Medication find(Object id);

    List<Medication> findAll();

    List<Medication> findRange(int[] range);

    int count();
    
}
