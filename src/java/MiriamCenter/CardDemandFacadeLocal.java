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
public interface CardDemandFacadeLocal {

    void create(CardDemand cardDemand);

    void edit(CardDemand cardDemand);

    void remove(CardDemand cardDemand);

    CardDemand find(Object id);

    List<CardDemand> findAll();

    List<CardDemand> findRange(int[] range);

    int count();
    
}
