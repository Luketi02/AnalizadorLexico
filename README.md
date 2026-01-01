# 🖥️ Analizador Léxico y Sintáctico - Teoría de la Computación

> *"El primer paso para entender una computadora es aprender a hablar su idioma gramaticalmente."*

## 📖 Sobre el Proyecto

Bienvenido a este repositorio. Este proyecto es el resultado final para la promoción de la materia **Teoría de la Computación**.

No es solo un programa; es una implementación práctica de los fundamentos de la compilación. Aquí he construido un **Analizador Léxico y Sintáctico** completo desde cero capaz de reconocer y validar un lenguaje de programación personalizado.

El objetivo fue demostrar cómo los autómatas finitos y las gramáticas libres de contexto se unen para dar sentido a líneas de código que, de otro modo, serían solo texto plano.

## 🚀 Características Principales

Este analizador no se limita a la consola; cuenta con una interfaz gráfica (GUI) clásica y funcional construida en **Java Swing**.

* **Análisis Léxico (Scanner):** Descompone el código fuente en *tokens* (identificadores, palabras reservadas, números, operadores). ¡Adiós al caos, hola al orden! 🧹
* **Análisis Sintáctico (Parser):** Verifica que los tokens sigan las reglas gramaticales definidas (el orden lógico de las instrucciones). Es el "policía de la gramática" de mi lenguaje. 👮‍♂️
* **Interfaz Gráfica Amigable:**
* Carga de archivos `.txt` o edición directa en pantalla.
* Visualización separada de resultados léxicos y errores sintácticos.
* Opciones de limpieza y gestión de archivos.


* **Manejo de Errores:** Reporte preciso de errores indicando línea y columna.

## 🛠️ Tecnologías Utilizadas

Fiel a la tradición del desarrollo de compiladores en el ecosistema Java, he utilizado herramientas probadas y robustas:

* **Java (JDK):** El lenguaje base del proyecto.
* **JFlex:** Para la generación del analizador léxico (`.flex`).
* **Java CUP:** Para la generación del analizador sintáctico (`.cup`).
* **Java Swing:** Para la interfaz de usuario (`JFrame`).

## 📝 El Lenguaje

El analizador interpreta un lenguaje estructurado diseñado específicamente para este proyecto. Aquí tienes un ejemplo de cómo luce la sintaxis que mi programa entiende:

```text
programa miAplicacion (
    // Zona de variables
    x, y := 0 : entero;
    nombre : string;
);

variables 
    resultado : float;
;

inicio
    leer(x);
    
    si x > 10 entonces
        escribir("Es mayor");
        resultado := x * 2;
    sino
        escribir("Es menor");
        resultado := x / 2;
    fin
    
    funcion calcularAlgo(a : entero) : entero;
    inicio
        // Lógica de función
    fin;
fin

```

### Palabras Reservadas Soportadas

`programa`, `variables`, `entero`, `float`, `string`, `char`, `boolean`, `si`, `entonces`, `sino`, `leer`, `escribir`, `funcion`, `inicio`, `fin`, entre otras.

## 🔧 Instalación y Ejecución

Para correr este proyecto en tu máquina local:

1. **Clonar el repositorio:**

```bash
git clone https://github.com/tu-usuario/nombre-del-repo.git

```

2. **Abrir en IDE:** Recomiendo usar **NetBeans** o **IntelliJ IDEA**. El proyecto tiene dependencias de las librerías `java-cup-11a.jar` y `JFlex`.
3. **Generar Archivos (Opcional):** Si modificas los archivos `.flex` o `.cup`, ejecuta la clase `Main.java` primero para regenerar los analizadores `ReglasLexicas.java` y `Gramatica.java`.
4. **Ejecutar:** Corre el archivo `PantallaPrincipal.java`.

## 👤 Autor

**Miño Lucas Juan**
* Profesor Universitario en Computación
* Estudiante de Licenciatura en Sistemas de Información
* [LinkedIn](https://www.linkedin.com/in/lucas-juan-mi)

---
*Este proyecto fue realizado con fines académicos demostrando el uso de autómatas finitos y las gramáticas libres de contexto.*
