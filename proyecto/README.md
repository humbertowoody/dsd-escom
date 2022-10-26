# Proyecto Final - Diseño de Sistemas Digitales

### Integrantes del Equipo #4

Los miembros del Equipo #4 son:

|Apellido Paterno|Apellido Materno|Nombre(s)|Número de Boleta|
|:---:|:---:|:---:|:---:|
|Ortega|Alcocer|Humberto Alejandro|2016630495|


## Máquina de Píldoras

Una máquina dispensadora de píldoras es aquella en dónde podemos verter, _N_
número de píldoras dentro de _R_ número de botellas. La intención es generar
el _Sistema Digital_ que describe el comportamiento esperado.

### Diagrama 

![Diagrama de la Máquina con Píldoras][diagrama-maquina]

### Simulación en Hardware (Proteus)

### Simulación en Software (VHDL)

Para el diseño del proyecto en VHDL, decidimos, así como se menciona en el libro
_Maximm_ para administrar VHDL, separarlo en múltiples módulos correspondientes
a las unidades atómicas de diseño que podemos encontrar para el proyecto, siendo
estas:

- Teclado
- Codificador
- Registro
- Decodificador
- Sumador
- Contador
- Multiplexor
- Demultiplexor

Una vez que contamos con estos componentes de forma modular, se genera el 
componente principal: `maquina-pastillas` con el cual integramos todos los
distintos componentes en el funcionamiento que esperamos.


