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
public interface CivilstatusFacadeLocal {

    void create(Civilstatus civilstatus);

    void edit(Civilstatus civilstatus);

    void remove(Civilstatus civilstatus);

    Civilstatus find(Object id);

    List<Civilstatus> findAll();

    List<Civilstatus> findRange(int[] range);

    int count();
    
}
