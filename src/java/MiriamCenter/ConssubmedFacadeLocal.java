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
public interface ConssubmedFacadeLocal {

    void create(Conssubmed conssubmed);

    void edit(Conssubmed conssubmed);

    void remove(Conssubmed conssubmed);

    Conssubmed find(Object id);

    List<Conssubmed> findAll();

    List<Conssubmed> findRange(int[] range);

    int count();
    
}
