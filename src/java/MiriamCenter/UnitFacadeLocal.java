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
public interface UnitFacadeLocal {

    void create(Unit unit);

    void edit(Unit unit);

    void remove(Unit unit);

    Unit find(Object id);

    List<Unit> findAll();

    List<Unit> findRange(int[] range);

    int count();

    public boolean insertUnit(String unitDesc);
    
}
