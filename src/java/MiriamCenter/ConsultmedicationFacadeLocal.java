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
public interface ConsultmedicationFacadeLocal {

    void create(Consultmedication consultmedication);

    void edit(Consultmedication consultmedication);

    void remove(Consultmedication consultmedication);

    Consultmedication find(Object id);

    List<Consultmedication> findAll();

    List<Consultmedication> findRange(int[] range);

    int count();
    
}
