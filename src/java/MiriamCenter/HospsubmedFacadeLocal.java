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
public interface HospsubmedFacadeLocal {

    void create(Hospsubmed hospsubmed);

    void edit(Hospsubmed hospsubmed);

    void remove(Hospsubmed hospsubmed);

    Hospsubmed find(Object id);

    List<Hospsubmed> findAll();

    List<Hospsubmed> findRange(int[] range);

    int count();
    
}
