# Flip Flops

Un flip flop es un _bit_ de memoria, esto quiere decir que siempre nos va a
almacenar un solo valor binario. Para esto, utiliza distintos mecanismos para
preservar y recibir instrucciones. 

Una memoria RAM 6x6:

|#|a5|a4|a3|a2|a1|a0|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|0|FF|FF|FF|FF|FF|FF|
|1|
|2|
|3|
|4|
|5|

Esta memoria tiene 6x6=36 flip-flops.

Los flip flops almacenan un dato `Q`, pero siempre tienen dos salidas: `Q` y `!Q`.

Existen cuatro tipos de flip-flops:

- `SR`
- `JK`
- `D`
- `T`

> Cuando utilizamos flip-flops, tenemos el concepto de _Latch_ el cual se
> refiere al tiempo de respuesta para activar/desactivar el flip-flop cuando
> no utilizamos una señal de reloj (un oscilador).

> "Activo en alto" quiere decir que actúa en 1's

> "Activo en bajo" quiere decir que actúa en 0's

## SR

Este flip flop almacena un dato que podremos modificar mediante los valores
que proporcionamos para `S` (set) y para `R` (reset).

|SR|Q(t)|Q(t+1)|
|:---:|:---:|:---:|
|00|1/0|Q(t) Memoria|
|01|1/0|0|
|10|1/0|1|
|11|1/0|Prohibido|

### Ejemplo

La siguiente tabla representa una línea de tiempo con los valores esperados
ante una serie de instrucciones.

|Tiempo|S|R|Q(t)|Q(t+1|
|---|---|---|---|---|
|0|
|1|
|2|
|3|

## JK

Es igual al comportamiento de `SR` excepto que la parte _prohibida_ en `SR` (
la combinación `1` y `1` para `S` y `R`, respectivamente) aquí si está
permitida.

|J|K|Q(t)|Q(t+1)|
|---|---|---|---|
|0|0|1/0|Q(t)|
|0|1|1/0|0|
|1|0|1/0|1|
|1|1|1/0|!Q(t)|

### Ejemplo

La siguiente tabla representa una línea de tiempo con los valores esperados
ante una serie de instrucciones.

|Tiempo|J|K|Q(t)|Q(t+1)|
|---|---|---|---|---|
|0|0|0|0|0|
|1|1|0|0|1|
|2|0|0|1|1|


## D

Se le conoce como _"Flip Flop Transparente"_ porque lo que tenemos en la
entrada es lo que tendremos a la salida.

|D|Q(t)|Q(t+1)|
|---|---|---|
|0|1/0|0|
|1|1/0|1|

## T

Le llaman `T` por _Toggle_. Esto es porque, básicamente, invierte el valor
presente en la memoria.

|T|Q(t)|Q(t+1)|
|---|---|---|
|0|0/1|Q(t)|
|1|0/1|!Q(t)|


