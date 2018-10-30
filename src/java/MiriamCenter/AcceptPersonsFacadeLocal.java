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
public interface AcceptPersonsFacadeLocal {

    void create(AcceptPersons acceptPersons);

    void edit(AcceptPersons acceptPersons);

    void remove(AcceptPersons acceptPersons);

    AcceptPersons find(Object id);

    List<AcceptPersons> findAll();

    List<AcceptPersons> findRange(int[] range);

    int count();
    
}
