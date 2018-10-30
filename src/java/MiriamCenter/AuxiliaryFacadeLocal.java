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
public interface AuxiliaryFacadeLocal {

    void create(Auxiliary auxiliary);

    void edit(Auxiliary auxiliary);

    void remove(Auxiliary auxiliary);

    Auxiliary find(Object id);

    List<Auxiliary> findAll();

    List<Auxiliary> findRange(int[] range);

    int count();
    
}
