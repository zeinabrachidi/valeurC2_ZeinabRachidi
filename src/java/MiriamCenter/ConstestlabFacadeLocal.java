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
public interface ConstestlabFacadeLocal {

    void create(Constestlab constestlab);

    void edit(Constestlab constestlab);

    void remove(Constestlab constestlab);

    Constestlab find(Object id);

    List<Constestlab> findAll();

    List<Constestlab> findRange(int[] range);

    int count();
    
}
