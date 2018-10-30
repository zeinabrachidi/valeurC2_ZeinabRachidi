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
public interface MedicalcardFacadeLocal {

    void create(Medicalcard medicalcard);

    void edit(Medicalcard medicalcard);

    void remove(Medicalcard medicalcard);

    Medicalcard find(Object id);

    List<Medicalcard> findAll();

    List<Medicalcard> findRange(int[] range);

    int count();
    
}
