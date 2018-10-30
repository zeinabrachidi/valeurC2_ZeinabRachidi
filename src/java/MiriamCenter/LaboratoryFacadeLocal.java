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
public interface LaboratoryFacadeLocal {

    void create(Laboratory laboratory);

    void edit(Laboratory laboratory);

    void remove(Laboratory laboratory);

    Laboratory find(Object id);

    List<Laboratory> findAll();

    List<Laboratory> findRange(int[] range);

    int count();
    
}
