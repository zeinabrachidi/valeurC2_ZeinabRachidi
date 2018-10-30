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
public interface MedisubmedFacadeLocal {

    void create(Medisubmed medisubmed);

    void edit(Medisubmed medisubmed);

    void remove(Medisubmed medisubmed);

    Medisubmed find(Object id);

    List<Medisubmed> findAll();

    List<Medisubmed> findRange(int[] range);

    int count();
    
}
