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
public interface RelatioshipFacadeLocal {

    void create(Relatioship relatioship);

    void edit(Relatioship relatioship);

    void remove(Relatioship relatioship);

    Relatioship find(Object id);

    List<Relatioship> findAll();

    List<Relatioship> findRange(int[] range);

    int count();
    
}
