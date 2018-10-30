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
public interface HosptestlabFacadeLocal {

    void create(Hosptestlab hosptestlab);

    void edit(Hosptestlab hosptestlab);

    void remove(Hosptestlab hosptestlab);

    Hosptestlab find(Object id);

    List<Hosptestlab> findAll();

    List<Hosptestlab> findRange(int[] range);

    int count();
    
}
