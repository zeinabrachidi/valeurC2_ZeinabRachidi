/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.io.Serializable;

/**
 *
 * @author zeina
 */
public class Test_Bean implements Serializable {

/**
 *
 * @author zeina
 */

    private int idTest;
    private String testName;

    public Test_Bean () {
    }

    public Test_Bean (int idTest) {
        this.idTest = idTest;
    }

    public int getIdTest() {
        return idTest;
    }

    public void setIdTest(int idTest) {
        this.idTest = idTest;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    @Override
    public String toString() {
        return "idTest=" + idTest + " testName" + testName;
    }  
}

