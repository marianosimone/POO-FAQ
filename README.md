# FAQ de Programación Orientada a Objetos

El presente documento nació como *resumen* o *material de estudio* para quienes se encuentren cursando la materia **Algoritmos y Programación II (75.41)** en la **Facultad de Ingeniería de la Universidad de Buenos Aires**.

Sin embargo, su autor original ([Pablo Antonio](http://pablo-a.com.ar)), lo hizo pensando para que pueda serle útil a cualquier persona interesada en los temas tratados en la materia.

Se encuentra estructurado en formato de FAQ (*Frequently Asked Questions*). Sin más, se trata de un documento con preguntas concretas y respuestas simples y directas. La especificidad de las respuestas va de la mano con la de las preguntas. Algunas respuestas son vagas pero generan interrogantes que se responden en subsiguientes preguntas.

En principio, dada la intención del documento, se intentará tratar los temas *desde la mirada que se da en la materia*. Es decir, no se buscará profundizar demasiado en aquello que sólo es visto superficialmente, por ejemplo. Sin embargo, se proveerán *links* a documentos con más información.

Lo anterior tampoco quiere decir que lo que aquí se halla escrito sea lo que las cátedras pretenden que uno sepa, ni mucho menos. Se trata simplemente de un documento que quiere servir de ayuda; ni más ni menos que eso.

La presente versión, es una extensión a la original, realizada por [Mariano Simone](http://www.marianosimone.com.ar), con el fin de incluir más contenidos y complementar los ejemplos (amén de republicar el documento, ya que el primero no está online)

# Introducción a la Programación Orientada a Objetos (POO)
## ¿Programación Orientada a Objetos? ¿Y qué es eso?
Antes que nada, la Programación Orientada a Objetos (POO) es un **paradigma** de programación. Muy sintéticamente, un paradigma es una manera de *pensar* al software. Cada paradigma trae consigo conceptos clave, una terminología y una manera de ver las cosas diferente.

La POO, en particular, es un paradigma que tiene sus raíces en los años 60 (con la aparición de Simula), aunque obtuvo una mayor popularidad recién en los 70 (con Smalltalk) y se hizo masiva ya desde los 80 (con la llegada de C++).

Existe mucho material para leer sobre su historia, si se quiere, pero a nuestros fines lo más destacable de la POO son las facilidades que nos brinda como programadores.

En una primera mirada, la POO nos ofrece una nueva manera de diseñar nuestros programas. Esta manera es **intuitiva**, más **cercana a la realidad** y nos permite alcanzar un **mayor nivel de abstracción**, en comparación con otros paradigmas tradicionales. Si programamos con criterio, nuestro código puede llegar a:

- mayor **mantenibilidad**
- mayor **extensibilidad**
- mayor **modularidad**
- mejor **aprovechamiento del código**

Todas estas características demuestran la gran capacidad de adaptación de nuestras aplicaciones. La POO nos permite pensar en términos de **objetos**, actores de nuestros problemas reales, e **interacciones** entre ellos, tal como ocurre en la realidad.

Links de interés:

- [Artículo en Wikipedia sobre "Object-oriented programming"](http://en.wikipedia.org/wiki/Object-oriented_programming)

## ¿Qué son los objetos en POO?

Cuando tratamos de solucionar un problema real, nos encontramos siempre con muchos factores intervinientes, participantes (tangibles o no) que influyen de alguna forma. Podríamos pensar, a modo de ejemplo, que se nos ha asignado la tarea de crear un sistema para gestionar una biblioteca. Al pensar en el diseño de nuestra aplicación, a simple vista podemos reconocer varios actores intervinientes, como los libros, los empleados, los lectores.

Los **objetos** son las representaciones computacionales de aquellos participantes *que nos interesan*. Nunca dejando de lado el problema que se pretende solucionar, también ellos, los objetos, deben tener las *características mínimas* que requieren para ser modelados. En nuestro caso, los libros, los empleados y los lectores podrían ser objetos de nuestra aplicación; todo depende de cómo queramos diseñarla.

Se dice que los objetos tienen un **estado** y un **comportamiento**. El estado de los objetos se aloja en sus *atributos*, y su comportamiento radica en sus *métodos*. Así, atributos de un libro podrían ser su *titulo* y *autor*, si se encuentra o no *enStock*, etc. Los atributos de un empleado podrían ser su *nombre*, *legajo*, *cargo*. Sin embargo, probablemente no nos interese saber sus *hobbies* o su  *posicionPreferidaParaPracticarSnowboard*. Del mismo modo, podría tener sentido la adjudicación de un método *obtenerLegajo()* a un objeto *Empleado*, que devuelva el número de legajo de este; pero quizás un método *practicarWindsurf()* no sea requerido.

En el transcurso de cualquier aplicación, los objetos *interactúan* entre sí mediante el envío de **mensajes**.

Links de interés:

- ["What Is an Object?"](http://java.sun.com/docs/books/tutorial/java/concepts/object.html), en un tutorial de Sun
- [Artículo en Wikipedia sobre "Object (computer science)"](http://en.wikipedia.org/wiki/Object_%28computer_science%29)

## ¿Qué son las clases?

Si bien los objetos son quienes interactúan en la aplicación para resolver nuestro problema, las *clases* son quienes realmente representan la estructura de cada una de nuestras abstracciones. En las clases es donde se definen los **atributos** y los **métodos**, es decir, los **miembros**, de la clase.

Los objetos son **instancias** de las clases. Así, *empleado_1* y *empleado_2* podrían ser *instancias* de la clase *Empleado*, y *lassie* y *rintintin* podrían serlo de *Perro*. Como puede notarse, las clases son el modelo de diferentes objetos que tienen características afines.

En C++, se podría definir una clase del siguiente modo:

```cpp
class Perro {
private:
        string color;
        string nombre;
public:
        Perro(string nombre = "NN", string color = "Negro") {
                this->color = color;
                this->nombre = nombre;
        }

        void ladrar() {
                // Ladrar.
        }
        void cambiarNombre(string nombre) {
                this->nombre = nombre;
        }
        void cambiarColor(string color) {
                this->color = color;
        }
};
```

Así podríamos crear instancias (objetos) para Lassie y Rin Tin Tin:

```cpp
int main() {
        Perro lassie("Lassie");
        Perro rintintin("Rin Tin Tin");

        lassie.cambiarColor("Blanco y marron");
        rintintin.cambiarColor("Blanco, marron y negro");
}
```

Links de interés:

- ["What Is a Class?"](http://java.sun.com/docs/books/tutorial/java/concepts/class.html), en un tutorial de Sun
- [Artículo en Wikipedia sobre "Class (computer science)"](http://en.wikipedia.org/wiki/Class_%28computer_science%29)

## Me vuelven loco con los nombres. ¿Por qué cada cosa tiene tantos nombres diferentes?

Esta pregunta, en realidad, no tiene una respuesta única y categórica. Sin embargo, puede ser aprovechada para aclarar cuáles de las palabras que aparecen en los textos son sinónimos entre sí. Se destacarán aquellas utilizadas en este documento.

- **objeto**, **instancia**
- **atributo**, propiedad, característica

## ¿Qué quieren decir con "encapsulamiento"?

El **encapsulamiento** es la propiedad de la POO que permite ubicar el *comportamiento* y la *estructura* de una abstracción (clase) en un **mismo compartimento**. Algunos lenguajes, como C++, ofrecen también modificadores de acceso para los miembros de las clases.

## ¿Qué es "encapsulamiento u ocultamiento de datos" en POO?

El concepto de **encapsulamiento** también suele extenderse al de **encapsulamiento u ocultamiento de datos**, es decir, lisa y llanamente, a la premisa de la modificación de los *atributos* únicamente a través de ciertas operaciones (*métodos*) creados con ese propósito. Esto permite *preservar* los datos, adquiriendo estos siempre valores válidos.

## ¿Qué es la herencia?

La **herencia** es una relación *estructural* y *estática*, definida en *tiempo de compilación* en la cual existe un *vínculo "es un"* entre una clase **ancestro** y una clase **descendiente**. (En los lenguajes que soportan
*herencia múltiple*, como es el caso de C++, los ancestros pueden ser más de uno.)

La herencia es uno de los conceptos clave en el paradigma de la programación orientada a objetos. Posibilita, entre otras cosas:

- Establecer relaciones de orden o jerarquía entre clases
- Aprovechar el *polimorfismo* (y darle sentido a este)
- Dar utilidad a las *clases abstractas*
- Permitir la reutilización de código

## No entendí lo del vínculo "es un". ¿"Es un" qué?

Se suele pensar en las relaciones entre ancestro-descendiente como vínculos "es un". Imaginemos por un momento que tenemos que modelar un restaurante. Entre los principales actores se encontrarán los empleados, por lo que suena coherente crear una clase *Empleado*. Sin embargo, para nuestros fines, puede llegar a ser necesario distinguir entre distintos *tipos* de empleados; por ejemplo: el mozo, el cocinero, el cajero, etc.

En ese caso, las clases *Mozo*, *Cocinero*, *Cajero* serían *subtipos* o *descendientes* de *Empleado*. De modo que es válido decir que:

- Todo *Mozo* **es un** *Empleado*.
- Todo *Cocinero* **es un** *Empleado*.
- Todo *Cajero* **es un** *Empleado*.

El siguiente esquema muestra el árbol de clases que podría utilizarse:

<img alt="taxonomia-clases.png" src="taxonomia-clases.png" />

Esta manera de organizar el árbol de clases no difiere en nada con las técnicas utilizadas para la taxonomía o clasificación en diversas ciencias. Pensar a las clases de esta manera en la POO hace que el *polimorfismo* tenga sentido.

## ¿Qué tengo que entender por "redefinición"?

Simplemente, *redefinir* en POO es escribir una implementación nueva de un mismo método (con mismos parámetros), ya existente en una clase ancestro, en una clase descendiente. Ejemplo rápido:

```cpp

class A {
private:
        string color;
public:
        // Declaro y defino un método.
        void foo() {
                this->color = "blue";
        }
};

class B : public A {
public:
        // Lo redefino en una clase descendiente.
        void foo() {
                this->color = "red";
        }
};
```

## ¿Qué es polimorfismo?

El polimorfismo es la característica de la POO que permite, en una jerarquía de clases (es decir, en la taxonomía dada por las relaciones de herencia), aprovechando los vínculos "es un" entre clases, utilizar instancias de clases descendientes en contextos en los que se utilizarían instancias de las respectivas clases ancestro, manteniendo de esta manera una respuesta unificada.

Además, el polimorfismo posibilita el retardo de la decisión acerca de qué implementación de un método será utilizada hasta tiempo de ejecución.

## ¿Qué quiere decir que un método sea "virtual"? ¿Es importante?

El concepto de método virtual se encuentra muy ligado al de **redefinición**, y es clave en la POO. Los siguientes ejemplos ayudarán a comprenderlo:

```cpp
#include <<iostream>

using namespace std;

class A {
public:
        void m() {
                cout << "m() en A" << endl;
        }
};

class B : public A {
public:
        void m() {
                cout << "m() en B" << endl;
        }
};

int main() {
        // Asignacion polimorfica
        A* a = new B();
        // Llamada al metodo
        a->m();
        delete a;
        return 0;
}
```

En principio, tenemos, simplemente, dos clases, *A* y *B*, con una relación de herencia (*B* es descendiente de *A*). En nuestra función *main()*, la asignación polimórfica nos permite asociar un puntero a una instancia de la clase *A* con un puntero a una instancia de la clase *B*. Sin embargo, al llamar al método *m()*, contrariamente a lo que uno podría llegar a pensar, se invocará al método definido en *A*. En otras palabras, si se compila y ejecuta el fragmento de código anterior se obtendrá:

```cpp
m() en A
```

Hagamos un ligero cambio a nuestros métodos, agregándoles en su declaración la palabra *virtual*:

```cpp
#include <<iostream>

using namespace std;

class A {
public:
        virtual void m() {
                cout << "m() en A" << endl;
        }
};

class B : public A {
public:
        virtual void m() {
                cout << "m() en B" << endl;
        }
};

int main() {
        A* a = new B();
        a->m();
        delete a;
        return 0;
}
```

Si ahora ejecutáramos este último código compilado, obtendríamos lo siguiente:

```cpp
m() en B
```

¿Qué es lo que ocurrió? Mediante la palabra *virtual* se indicó que se pretendía posponer la vinculación del método con la instancia hasta tiempo de ejecución. Esto es lo que se conoce como *late binding* o, en español, **ligadura tardía** (también se suelen usar las palabras **dinámica** o **virtual**, en reemplazo de "tardía", para hacer referencia a lo mismo).

En este caso, al llamar al método *m()* de un objeto del tipo *B*, se estará invocando a la implementación de este en la clase *B*, independientemente de cuál sea el tipo del puntero que hace referencia a él.

**Atención:** En algunos lenguajes, como Java, los métodos en las clases son virtuales por omisión.

## ¿Qué es una "clase abstracta"?

Yendo al grano, una clase abstracta es una clase que **no puede ser instanciada**. En C++, basta con que exista un *método abstracto* en la clase para que esta sea considerada abstracta. Las clases que no son abstractas suelen ser llamadas *concretas*.

En la práctica, las clases abstractas suelen corresponder a nociones o conceptos abstractos. Como ejemplo, podríamos pensar que tenemos a cargo modelar distintas formas geométricas que eventualmente dibujaremos de algún modo en la pantalla. Enseguida surge la opción de crear una clase *Forma*, con un método *dibujar()*. Sin embargo, no tenemos manera de saber cómo dibujar una *Forma* si no sabemos de qué forma se trata.

Podríamos, sin embargo, crear *subtipos* de *Forma* que alberguen esta información. Por ejemplo, los tipos *Circulo* y *Triangulo*. Al heredar de una clase abstracta, las clases *Circulo* y *Triangulo* se encuentran **obligadas a implementar** los métodos abstractos de su clase ancestro (más allá de que estos tengan o no una implementación previa).
Hasta dónde un concepto es lo suficientemente abstracto como para que tenga sentido representarlo mediante una clase abstracta depende mucho del sistema y de la especificidad que busque el programador en su diseño. Para alguno una clase *Auto* puede ser obligadamente abstracta (por ejemplo, si uno piensa en tener subtipos del tipo *Convertible* o *Ferrari*). Para otros, una clase concreta *Auto* puede ser suficiente.

## Todo muy lindo pero... ¿Cómo declaro un "método abstracto"?

Los métodos abstractos (también llamados *virtuales puros*) son, generalmente, métodos sin implementación. Los métodos abstractos dan origen a las clases abstractas. De esta manera, las clases descendiente están **obligadas a implementarlos**.:

```cpp
//Clase abstracta.
class Forma {
public:
        // Declaracion de un metodo abstracto.
        virtual void dibujar() const = 0;
};

class Circulo : public Forma {
public:
        virtual void dibujar() const {
                // Implementacion para dibujar un circulo.
        }
};
class Triangulo : public Forma {
public:
        virtual void dibujar() const {
                // Implementacion para dibujar un triangulo.
        }
};
```

El anterior fragmento de código en C++ muestra la declaración de un método abstracto (que convierte a la clase en abstracta) *dibujar()* y su implementación en las clases descendientes. La clase *Forma* **no puede ser instanciada**, y las clases descendientes están **obligadas a implementar el método abstracto**. La parte de *=0* es la que indica que el método es abstracto o virtual puro.

**Atención:** La sintaxis para métodos abstractos en C++ obliga la utilización de la palabra reservada *virtual* además del *=0*.
