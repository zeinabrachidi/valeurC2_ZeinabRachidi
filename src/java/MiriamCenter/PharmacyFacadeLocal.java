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
public interface PharmacyFacadeLocal {

    void create(Pharmacy pharmacy);

    void edit(Pharmacy pharmacy);

    void remove(Pharmacy pharmacy);

    Pharmacy find(Object id);

    List<Pharmacy> findAll();

    List<Pharmacy> findRange(int[] range);

    int count();
    
}
