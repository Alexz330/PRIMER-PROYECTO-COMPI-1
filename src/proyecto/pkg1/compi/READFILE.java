/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto.pkg1.compi;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alexi
 */
public class READFILE {

    public String Read(String path) {

        String text = "";

        try {
            BufferedReader bf = new BufferedReader(new FileReader(path));

            String temp = "";

            String bfRead;

            while ((bfRead = bf.readLine()) != null) {

                temp += bfRead;
            }
            text = temp;

        } catch (Exception ex) {
          
            
            System.err.println("No se encontro archivo");
               

        }

        return text;
    }

}
