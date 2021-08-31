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

letra = [a-zA-Z]
entero = [0-9]+

//Identificadores
identificador = {letra}({letra}|"_"|{entero})*
cadena = "\""[^\"]+"\""
especialC = ("\\""n"|"\\""\'"|"\\""\"")
//Comentarios
comunilinea = ("//".*\n)|("//".*\r)
commultilinea = ("<""!"[^\!]*"!"">")



%%

"," {return new Symbol(sym.comma,yyline,yychar,yytext());}

//IGNORADOS
{blancos} {}
{comunilinea} {}
{commultilinea} {}




{identificador} {return new Symbol(sym.identificador,yyline,yychar,yytext());}
{entero} {return new Symbol(sym.entero,yyline,yychar,yytext());}
{cadena} {return new Symbol(sym.cadena,yyline,yychar,yytext());}
{especialC} {return new Symbol(sym.especialC,yyline,yychar,yytext());}


.   {
	    System.err.println("Error lexico: "+yytext()+ " Linea:"+(yyline)+" Columna:"+(yychar));
             
    }


