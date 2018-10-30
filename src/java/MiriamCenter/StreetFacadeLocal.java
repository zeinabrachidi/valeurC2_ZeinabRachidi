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
public interface StreetFacadeLocal {

    void create(Street street);

    void edit(Street street);

    void remove(Street street);

    Street find(Object id);

    List<Street> findAll();

    List<Street> findRange(int[] range);

    int count();
    
}
