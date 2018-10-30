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
public interface ChefserviceFacadeLocal {

    void create(Chefservice chefservice);

    void edit(Chefservice chefservice);

    void remove(Chefservice chefservice);

    Chefservice find(Object id);

    List<Chefservice> findAll();

    List<Chefservice> findRange(int[] range);

    int count();
    
}
