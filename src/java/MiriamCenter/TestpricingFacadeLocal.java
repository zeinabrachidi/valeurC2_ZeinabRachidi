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
public interface TestpricingFacadeLocal {

    void create(Testpricing testpricing);

    void edit(Testpricing testpricing);

    void remove(Testpricing testpricing);

    Testpricing find(Object id);

    List<Testpricing> findAll();

    List<Testpricing> findRange(int[] range);

    int count();
    
}
