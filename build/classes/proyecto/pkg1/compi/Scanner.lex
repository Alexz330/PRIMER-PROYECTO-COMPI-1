package proyecto.pkg1.compi;
import java_cup.runtime.*;

%%
%class Lexico
%cupsym sym
%cup 
%public
%unicode
%line
%char 
%full
%column
%ignorecase

%init{ 
    yyline = 1; 
	yychar = 1; 
%init}

blancos = [ \r\t\n]+
//letras



// analizador de javasito
letra = [a-zA-Z]
entero = [0-9]+







//Identificadores
identificador = {letra}({letra}|"_"|{entero})*




%%



//IGNORADOS





{identificador} {return new Symbol(sym.identificador,yyline,yychar,yytext());}


"const" {return new Symbol(sym.constante ,yyline,yychar,yytext()); }




// simbolos de javeritoScript

"=" {return new Symbol(sym.Igual,yyline,yychar,yytext());}


.   {
	    System.err.println("Error lexico: "+yytext()+ " Linea:"+(yyline)+" Columna:"+(yychar));
             
    }


