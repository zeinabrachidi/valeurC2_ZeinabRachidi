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
public interface DeathFacadeLocal {

    void create(Death death);

    void edit(Death death);

    void remove(Death death);

    Death find(Object id);

    List<Death> findAll();

    List<Death> findRange(int[] range);

    int count();
    
}
