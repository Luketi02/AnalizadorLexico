package Clases;

import java_cup.runtime.Symbol;

%%
%class ReglasSintacticas 
%type java_cup.runtime.Symbol 
%cup
%full
%line
%char

L=[a-zA-Z_]+ 
D=[0-9]+ 
espacio=[ \t\r\n]+ 

%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}

%%

variables           {return new Symbol(sym.RESERVADO_VARIABLES, yychar, yyline, yytext());}
programa            {return new Symbol(sym.RESERVADO_PROGRAMA, yychar, yyline, yytext());}
escribir            {return new Symbol(sym.RESERVADO_ESCRIBIR, yychar, yyline, yytext());}
entonces            {return new Symbol(sym.RESERVADO_ENTONCES, yychar, yyline, yytext());}
funcion             {return new Symbol(sym.RESERVADO_FUNCION, yychar, yyline, yytext());}
boolean             {return new Symbol(sym.RESERVADO_BOOLEAN, yychar, yyline, yytext());}
modulo              {return new Symbol(sym.RESERVADO_MODULO, yychar, yyline, yytext());}
entero              {return new Symbol(sym.RESERVADO_ENTERO, yychar, yyline, yytext());}
inicio              {return new Symbol(sym.RESERVADO_INICIO, yychar, yyline, yytext());}
string              {return new Symbol(sym.RESERVADO_STRING, yychar, yyline, yytext());}
float               {return new Symbol(sym.RESERVADO_FLOAT, yychar, yyline, yytext());}
sino                {return new Symbol(sym.RESERVADO_SINO, yychar, yyline, yytext());}
leer                {return new Symbol(sym.RESERVADO_LEER, yychar, yyline, yytext());}
char                {return new Symbol(sym.RESERVADO_CHAR, yychar, yyline, yytext());}
fin                 {return new Symbol(sym.RESERVADO_FIN, yychar, yyline, yytext());}
si                  {return new Symbol(sym.RESERVADO_SI, yychar, yyline, yytext());}

"("                 {return new Symbol(sym.SIMBOLO_PARENTESIS_ABIERTO, yychar, yyline, yytext());}
")"                 {return new Symbol(sym.SIMBOLO_PARENTESIS_CERRADO, yychar, yyline, yytext());}
"["                 {return new Symbol(sym.SIMBOLO_CORCHETE_ABIERTO, yychar, yyline, yytext());}
"]"                 {return new Symbol(sym.SIMBOLO_CORCHETE_CERRADO, yychar, yyline, yytext());}
"{"                 {return new Symbol(sym.SIMBOLO_LLAVE_ABIERTA, yychar, yyline, yytext());}
"}"                 {return new Symbol(sym.SIMBOLO_LLAVE_CERRADA, yychar, yyline, yytext());}
";"                 {return new Symbol(sym.SIMBOLO_PUNTO_Y_COMA, yychar, yyline, yytext());}
":"                 {return new Symbol(sym.SIMBOLO_DOS_PUNTOS, yychar, yyline, yytext());}
":="                {return new Symbol(sym.SIMBOLO_ASIGNACION, yychar, yyline, yytext());}
"="                 {return new Symbol(sym.SIMBOLO_IGUALDAD, yychar, yyline, yytext());}
","                 {return new Symbol(sym.SIMBOLO_COMA, yychar, yyline, yytext());}

"*="                {return new Symbol(sym.SIMBOLO_ASIGNACION_MULTIPLICACION, yychar, yyline, yytext());}
"/="                {return new Symbol(sym.SIMBOLO_ASIGNACION_DIVISION, yychar, yyline, yytext());}
"%="                {return new Symbol(sym.SIMBOLO_ASIGNACION_MODULO, yychar, yyline, yytext());}
"-="                {return new Symbol(sym.SIMBOLO_ASIGNACION_RESTA, yychar, yyline, yytext());}
"+="                {return new Symbol(sym.SIMBOLO_ASIGNACION_SUMA, yychar, yyline, yytext());}
"*"                 {return new Symbol(sym.SIMBOLO_MULTIPLICACION, yychar, yyline, yytext());}
"/"                 {return new Symbol(sym.SIMBOLO_DIVISION, yychar, yyline, yytext());}
"%"                 {return new Symbol(sym.SIMBOLO_MODULO, yychar, yyline, yytext());}
"-"                 {return new Symbol(sym.SIMBOLO_RESTA, yychar, yyline, yytext());}
"+"                 {return new Symbol(sym.SIMBOLO_SUMA, yychar, yyline, yytext());}


{L}({L}|{D})*       {return new Symbol(sym.IDENTIFICADOR, yychar, yyline, yytext());}

("(-"{D}+")")|{D}+  {return new Symbol(sym.NUMERO, yychar, yyline, yytext());}

"//".*              {/*Ignore*/}

{espacio}           {/*Ignore*/}

.                   {return new Symbol(sym.CARACTER_DESCONOCIDO, yychar, yyline, yytext());}
