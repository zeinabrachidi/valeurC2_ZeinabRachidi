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
public interface FamilyFacadeLocal {

    void create(Family family);

    void edit(Family family);

    void remove(Family family);

    Family find(Object id);

    List<Family> findAll();

    List<Family> findRange(int[] range);

    int count();
    
}
