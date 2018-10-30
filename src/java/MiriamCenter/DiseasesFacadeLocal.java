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
public interface DiseasesFacadeLocal {

    void create(Diseases diseases);

    void edit(Diseases diseases);

    void remove(Diseases diseases);

    Diseases find(Object id);

    List<Diseases> findAll();

    List<Diseases> findRange(int[] range);

    int count();
    
}
