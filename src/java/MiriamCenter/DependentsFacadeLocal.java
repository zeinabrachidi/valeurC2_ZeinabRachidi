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
public interface DependentsFacadeLocal {

    void create(Dependents dependents);

    void edit(Dependents dependents);

    void remove(Dependents dependents);

    Dependents find(Object id);

    List<Dependents> findAll();

    List<Dependents> findRange(int[] range);

    int count();
    
}
