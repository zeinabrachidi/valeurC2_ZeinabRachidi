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
public interface HospoperationFacadeLocal {

    void create(Hospoperation hospoperation);

    void edit(Hospoperation hospoperation);

    void remove(Hospoperation hospoperation);

    Hospoperation find(Object id);

    List<Hospoperation> findAll();

    List<Hospoperation> findRange(int[] range);

    int count();
    
}
