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
public interface HospitalFacadeLocal {

    void create(Hospital hospital);

    void edit(Hospital hospital);

    void remove(Hospital hospital);

    Hospital find(Object id);

    List<Hospital> findAll();

    List<Hospital> findRange(int[] range);

    int count();
    
}
