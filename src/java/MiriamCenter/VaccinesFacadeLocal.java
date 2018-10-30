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
public interface VaccinesFacadeLocal {

    void create(Vaccines vaccines);

    void edit(Vaccines vaccines);

    void remove(Vaccines vaccines);

    Vaccines find(Object id);

    List<Vaccines> findAll();

    List<Vaccines> findRange(int[] range);

    int count();
    
}
