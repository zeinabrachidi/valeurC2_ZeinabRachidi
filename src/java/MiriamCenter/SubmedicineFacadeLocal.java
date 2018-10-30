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
public interface SubmedicineFacadeLocal {

    void create(Submedicine submedicine);

    void edit(Submedicine submedicine);

    void remove(Submedicine submedicine);

    Submedicine find(Object id);

    List<Submedicine> findAll();

    List<Submedicine> findRange(int[] range);

    int count();
    
}
