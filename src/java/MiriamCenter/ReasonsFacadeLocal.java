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
public interface ReasonsFacadeLocal {

    void create(Reasons reasons);

    void edit(Reasons reasons);

    void remove(Reasons reasons);

    Reasons find(Object id);

    List<Reasons> findAll();

    List<Reasons> findRange(int[] range);

    int count();
    
}
