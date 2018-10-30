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
public interface PersontypeFacadeLocal {

    void create(Persontype persontype);

    void edit(Persontype persontype);

    void remove(Persontype persontype);

    Persontype find(Object id);

    List<Persontype> findAll();

    List<Persontype> findRange(int[] range);

    int count();
    
}
