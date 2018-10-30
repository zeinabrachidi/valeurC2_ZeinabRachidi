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
public interface HospmedicationFacadeLocal {

    void create(Hospmedication hospmedication);

    void edit(Hospmedication hospmedication);

    void remove(Hospmedication hospmedication);

    Hospmedication find(Object id);

    List<Hospmedication> findAll();

    List<Hospmedication> findRange(int[] range);

    int count();
    
}
