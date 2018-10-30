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
public interface ProfessionFacadeLocal {

    void create(Profession profession);

    void edit(Profession profession);

    void remove(Profession profession);

    Profession find(Object id);

    List<Profession> findAll();

    List<Profession> findRange(int[] range);

    int count();
    
}
