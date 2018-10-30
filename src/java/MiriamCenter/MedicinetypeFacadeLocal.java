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
public interface MedicinetypeFacadeLocal {

    void create(Medicinetype medicinetype);

    void edit(Medicinetype medicinetype);

    void remove(Medicinetype medicinetype);

    Medicinetype find(Object id);

    List<Medicinetype> findAll();

    List<Medicinetype> findRange(int[] range);

    int count();
    
}
