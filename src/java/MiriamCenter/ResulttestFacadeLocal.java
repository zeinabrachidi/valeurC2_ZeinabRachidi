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
public interface ResulttestFacadeLocal {

    void create(Resulttest resulttest);

    void edit(Resulttest resulttest);

    void remove(Resulttest resulttest);

    Resulttest find(Object id);

    List<Resulttest> findAll();

    List<Resulttest> findRange(int[] range);

    int count();
    
}
