package Clases;

import static Clases.Tokens.*;

%%
%class ReglasLexicas 
%type Tokens 

L=[a-zA-Z_]+ 
D=[0-9]+ 
espacio=[ \t\r]+ 

%{
    public String lexeme; 
%}

%%

variables           {lexeme = yytext(); return RESERVADO_VARIABLES;}
programa            {lexeme = yytext(); return RESERVADO_PROGRAMA;}
entonces            {lexeme = yytext(); return RESERVADO_ENTONCES;}
escribir            {lexeme = yytext(); return RESERVADO_ESCRIBIR;}
funcion             {lexeme = yytext(); return RESERVADO_FUNCION;}
boolean             {lexeme = yytext(); return RESERVADO_BOOLEAN;}
entero              {lexeme = yytext(); return RESERVADO_ENTERO;}
inicio              {lexeme = yytext(); return RESERVADO_INICIO;}
modulo              {lexeme = yytext(); return RESERVADO_MODULO;}
String              {lexeme = yytext(); return RESERVADO_STRING;}
float               {lexeme = yytext(); return RESERVADO_FLOAT;}
leer                {lexeme = yytext(); return RESERVADO_LEER;}
sino                {lexeme = yytext(); return RESERVADO_SINO;}
char                {lexeme = yytext(); return RESERVADO_CHAR;}
fin                 {lexeme = yytext(); return RESERVADO_FIN;}

"*="                {lexeme = yytext(); return SIMBOLO_ASIGNACION_MULTIPLICACION;}
"/="                {lexeme = yytext(); return SIMBOLO_ASIGNACION_DIVISION;}
"("                 {lexeme = yytext(); return SIMBOLO_PARENTESIS_ABIERTO;}
")"                 {lexeme = yytext(); return SIMBOLO_PARENTESIS_CERRADO;}
"%="                {lexeme = yytext(); return SIMBOLO_ASIGNACION_MODULO;}
"["                 {lexeme = yytext(); return SIMBOLO_CORCHETE_ABIERTO;}
"]"                 {lexeme = yytext(); return SIMBOLO_CORCHETE_CERRADO;}
"-="                {lexeme = yytext(); return SIMBOLO_ASIGNACION_RESTA;}
"+="                {lexeme = yytext(); return SIMBOLO_ASIGNACION_SUMA;}
"\n"                {lexeme = yytext(); return SIMBOLO_SALTO_DE_LINEA;}
"*"                 {lexeme = yytext(); return SIMBOLO_MULTIPLICACION;}
"{"                 {lexeme = yytext(); return SIMBOLO_LLAVE_ABIERTA;}
"}"                 {lexeme = yytext(); return SIMBOLO_LLAVE_CERRADA;}
";"                 {lexeme = yytext(); return SIMBOLO_PUNTO_Y_COMA;}
":"                 {lexeme = yytext(); return SIMBOLO_DOS_PUNTOS;}
":="                {lexeme = yytext(); return SIMBOLO_ASIGNACION;}
"="                 {lexeme = yytext(); return SIMBOLO_IGUALDAD;}
"/"                 {lexeme = yytext(); return SIMBOLO_DIVISION;}
"%"                 {lexeme = yytext(); return SIMBOLO_MODULO;}
"-"                 {lexeme = yytext(); return SIMBOLO_RESTA;}
","                 {lexeme = yytext(); return SIMBOLO_COMA;}
"+"                 {lexeme = yytext(); return SIMBOLO_SUMA;}

{L}({L}|{D})*       {lexeme = yytext(); return IDENTIFICADOR;}

("(-"{D}+")")|{D}+  {lexeme = yytext(); return NUMERO;}

"//".*              {/*Ignore*/}

{espacio}           {/*Ignore*/}

.                   {lexeme = yytext(); return CARACTER_DESCONOCIDO;}