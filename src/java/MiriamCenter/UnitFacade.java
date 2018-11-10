/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author zeina
 */
@Stateless
public abstract class UnitFacade extends AbstractFacade<Unit> implements UnitFacadeLocal {

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
     * @param idUnit
     * @param unitDesc
     * @return
     */
    //@Override
    public boolean insertUnit(int idUnit, String unitDesc)
    {   try { 
        Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UnitFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
        try { 	
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02");
        } catch (SQLException ex) {
            Logger.getLogger(UnitFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
               
        try
        {  Unit u = new Unit();
           String query = "SELECT * FROM valeurc2.Unit order by idUnit desc limit 1";
           if (u.getIdUnit()== null)
               u.setIdUnit(1);
           else 
               u.setIdUnit(u.getIdUnit() + 1);
           System.out.println(u.getIdUnit());
           u.setUnitDesc(unitDesc);
           System.out.println(u.getIdUnit());
           System.out.println();
           em.persist(u);
           return true;
        }
        catch (Exception e)
        { System.err.println(e);      } 
       
        return false;
    }
}
