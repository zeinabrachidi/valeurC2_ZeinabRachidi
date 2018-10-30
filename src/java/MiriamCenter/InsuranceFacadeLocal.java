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
public interface InsuranceFacadeLocal {

    void create(Insurance insurance);

    void edit(Insurance insurance);

    void remove(Insurance insurance);

    Insurance find(Object id);

    List<Insurance> findAll();

    List<Insurance> findRange(int[] range);

    int count();
    
}
