package proyecto.pkg1.compi;

import java.io.StringReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyecto.pkg1.compi.UI.UIMenu;


public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        
        READFILE file = new READFILE();
        
        String content = file.Read("C:\\Users\\alexi\\OneDrive\\Escritorio\\pruebita.js"); 

       // ANALIZADOR
        parser parsero = new parser(new Lexico(new StringReader(content)));
        try {
            // ANALIZAR
            parsero.parse();
        } catch (Exception ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
