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
public interface TestlabFacadeLocal {

    void create(Testlab testlab);

    void edit(Testlab testlab);

    void remove(Testlab testlab);

    Testlab find(Object id);

    List<Testlab> findAll();

    List<Testlab> findRange(int[] range);

    int count();
    
}
