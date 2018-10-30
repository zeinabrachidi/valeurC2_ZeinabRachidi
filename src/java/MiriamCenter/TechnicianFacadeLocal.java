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
public interface TechnicianFacadeLocal {

    void create(Technician technician);

    void edit(Technician technician);

    void remove(Technician technician);

    Technician find(Object id);

    List<Technician> findAll();

    List<Technician> findRange(int[] range);

    int count();
    
}
