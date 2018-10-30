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
public interface TakingvitalFacadeLocal {

    void create(Takingvital takingvital);

    void edit(Takingvital takingvital);

    void remove(Takingvital takingvital);

    Takingvital find(Object id);

    List<Takingvital> findAll();

    List<Takingvital> findRange(int[] range);

    int count();
    
}
