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
public interface HospitalizationFacadeLocal {

    void create(Hospitalization hospitalization);

    void edit(Hospitalization hospitalization);

    void remove(Hospitalization hospitalization);

    Hospitalization find(Object id);

    List<Hospitalization> findAll();

    List<Hospitalization> findRange(int[] range);

    int count();
    
}
