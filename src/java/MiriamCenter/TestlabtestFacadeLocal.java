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
public interface TestlabtestFacadeLocal {

    void create(Testlabtest testlabtest);

    void edit(Testlabtest testlabtest);

    void remove(Testlabtest testlabtest);

    Testlabtest find(Object id);

    List<Testlabtest> findAll();

    List<Testlabtest> findRange(int[] range);

    int count();
    
}
