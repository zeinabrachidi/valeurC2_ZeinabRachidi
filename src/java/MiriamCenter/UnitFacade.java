/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.sql.Connection;
import java.sql.PreparedStatement;

import MiriamCenter.DB_Connection;


/**
 *
 * @author zeina
 */
@Stateless
public class UnitFacade extends AbstractFacade<Unit> implements UnitFacadeLocal {

    @PersistenceContext(unitName = "DOSSIER_MEDICALPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UnitFacade() {
        super(Unit.class);
    }
    
    /**
     *
     * @param unitDesc
     * @return
     */
    @Override
    public boolean insertUnit(String unitDesc)
    {   DB_Connection DB_Con=new DB_Connection();
        Connection connection=DB_Con.get_connection();	
        
               
        try
        {  Unit u = new Unit();
           u.setUnitDesc(unitDesc);
           em.persist(u);
           return true;
        }
        catch (Exception e)
        { System.err.println(e);      } 
       
        return false;
    }
}
