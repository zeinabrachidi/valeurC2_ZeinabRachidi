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
public interface PatientcivilFacadeLocal {

    void create(Patientcivil patientcivil);

    void edit(Patientcivil patientcivil);

    void remove(Patientcivil patientcivil);

    Patientcivil find(Object id);

    List<Patientcivil> findAll();

    List<Patientcivil> findRange(int[] range);

    int count();
    
}
