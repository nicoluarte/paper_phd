---
title: "Coupled ripple oscillations between the medial temporal lobe and neocortex retrieve human memory"
author: Alex P. Vaz, Sara K. Inati, Nicolas Brunel, Kareem A. Zaghoul
date: 22 de Octubre
output: 
    beamer_presentation:
theme: "Boadilla"
---
# Introducción

## Datos previos
- Science (neuroscience) Journal, 2019
- Trabajo previo en memory encoding
- Fenomeno previamente estudiado, principalmente, en consolidación de memoria

## Recuperación de memoria y 'ripples'

- Hipótesis central

    'Coupled ripples may constitute neural mechanisms for actively retrieving memory representation in the human brain.'
    
![Coupled ripples](/home/nicoluarte/paper_phd/images/intro.png){ width=250px }

# Método

## Tarea
- 14 participantes (9 mujeres; 36.3 $\pm$ 3.0 años)
- Aprender nuevas asociaciones entre pares de palabras ('encoding phase')
- Dada una palabra del par, debían decir el par correspondiente ('retrieval period'), mediante la voz
- Dos tipos de tareas muy similares
- 3.9 sesiones por participante, 60, 100 o 150 pares de palabras

![Tarea](/home/nicoluarte/paper_phd/images/task.png)

## Mediciones

- Registros intracraneales ('iEEG')
    * Tasa de muestreo: [1000, 2000]Hz
    * 41.1 ± 3.6 puntos de registro (aplicados al estudio)
- Localización (áreas principales)
    * Lóbulo temporal medial ('MTL') :Subdural:
- Corteza de asociación
    * Lóbulo temporal anterior ('ATL') :Corteza:
    * Giro temporal medio ('MTG') :Corteza:
- Control (menor conectividad hipocampal)
    * Corteza somatosensorial
    * Corteza motora primaria
    
![Densidad electrodos](/home/nicoluarte/paper_phd/images/eeg_recordings.png){ width=250px }
    
## Operacionalización de variables (1)
- Ripples:
    * Filtro paso banda (80-120 Hz)
    * Se obtiene la amplitud instantanea en esta banda[^hilbert]
    * Selección: 2 $\sigma$ a 3 $\sigma$ de la amplitud media
    * Duración $\ge$ 25ms
    * Se unieron 'ripples' con distancia < 15ms
    * Duración: diferencia entre fin e inicio
    
[^hilbert]: Transformada de Hilbert 

## Operacionalización de variables (2)
- Coupled ripples:
    * Idea central: 'ripples' sincronizados
    * Correlación cruzada [ATL, Primary Cortex] y MTL
    * 'Shift predictor'[^shift]
    * Eventos localizados, su sincronización cae en los 2 cm
    
![Coupled ripples](/home/nicoluarte/paper_phd/images/coupled_ripples.png){ width=250px }
       
[^shift]: Se considera una línea base por azar. Se crea mediante correlación cruzada entre un trial dado y el resto. Coincidencias por segundo por par de electrodos.

## Operacionalización de las variables (3)
- Sincronización
    * Sumatoria ventana $\pm$ 50ms / área por chance

![Sincronización](/home/nicoluarte/paper_phd/images/sinchronization.png){ width=350px }

## Coupling (1)
- Unión ('coupling') áreas corteza temporal vs corteza primaria
    * Prueba de t pareada, compara versus distribución por 'chance'
    
- Unión ('coupling') áreas cerebrales por par de electrodos
    * Prueba de t pareada, p < 0.05 = 'coupled electrode'
    
## Coupling (2)
- Probabilidad condicional
    * $p(electrodo cortical | electrodo MTL) = p(m, c) / p(m)$
    * $p(electrodo MTL | electrodo cortical) = p(m, c) / p(c)$
   
    Con esto se determina que el incremento de 'coupled ripples' no se debe a un
    aumento de probabilidad por el hecho de que el electrodo simplemente tenga
    mas ripples en total y por ende aumenten las coincidencias.
    
## Reinstanciamiento (3)
- Reinstanciamiento ('reinstatement')
    * Vector de características codificación ('encoding')
    $E_{i} = [Z_{1, 1}(i) \ldots Z_{1, F}(i) \ldots Z_{L, F}(i)]$
    * Vector de características evocación ('retrieval')
    $E_{j} = [Z_{1, 1}(j) \ldots Z_{1, F}(j) \ldots Z_{L, F}(j)]$
    
    Los subíndices representan número de electrodo y número de la banda de
    frecuencia[^bands], respectivamente, en unidad de puntuación estándar.
    Se calculó la similitud de coseno para cada época del par de entradas en el
    vector [encoding - retrieval]. 

- Test de permutaciones (test de t) para diferencias entre correctos e incorrectos
    
[^bands]: [delta, theta, alpha, beta, gamma, ripple band(80-120)]Hz
    

# Resultados

## 'Coupled ripples'
- La corteza presenta un aumento de poder en la banda (80-120Hz, 'Ripple banda'), dentro de una ventana de 50ms luego de presencia de 'ripples' en el MTL versus 50 ms antes. *[t(13) = 2.41, p < 0.05, t-test pareado]*
- Esto no sucede con la corteza primaria (control) *[t(8) = -0.85, p > 0.05]*
- 16.4 $\pm$ 5.3% de electrodos de la corteza temporal están acoplados con el MTL
- 3.3 $\pm$ 2.8% de electrodos de la corteza primaria están acoplados con el MTL

## 'Coupled ripples' y tarea experimental
- El tasa de 'coupled ripples' entre MTL y la corteza temporal es más alta en trial correctos que incorrectos *[t(13) = 3.33, p < 0.01]*
- Para descartar que este acoplamiento sea por el hecho de aumentar la tasa de 'ripples' en el MTL:
    * Se calculó la probabilidad condicional $p(m | c)$ y $p(c | m)$, descartando el aumento por chanche
    * Se descarta efecto por conducción de volumen (del MTL al resto) con referencia bipolar y dada la distribución cuasi-uniforme de las diferencias de fase (se esperaría ~0 lag si fuese por conducción por volumen, y por lo mismo un 'peak' acentuado)
    
![Correctos/Incorrectos](/home/nicoluarte/paper_phd/images/condition.png){ width=250px }

## Sincronización
- La corteza temporal está más 'sincronizada' con el MTL *[Sincronización = 1.26 $\pm$ 0.08; t(13) = 3.19, p < 0.01, versus 'línea base']*
- Por otro lado, la corteza primaria no lo está *[Sincronización = 1.07 $\pm$ 0.04; t(8) = 1.77, p > 0.05]*

## Sincronización y tarea experimental
- En trials correctos, en todas las épocas comparadas con la 'línea base', hubo mayor sincronizadas entre corteza temporal y MTL *[Sincronización = 1.37 $\pm$ 0.11; t(13) = 2.83, p < 0.05, t-test pareado]*
- Este efecto también se observa 500ms pre-vocalización (trial correctos versus incorrectos) *[t(13) = 2.26, p < 0.05, t-test pareado]*

## Los 'coupled ripples' pueden re-instanciar representaciones neurales de los respectivos períodos de codificación
- Se realiza la operacionalización de una representación a nivel corteza mediante un vector de características compuesto por el puntaje z del poder por electrodo por banda de frecuencia
    * El reinstanciamento es mayor en trials correctos que incorrectos *[p < 0.01, test de permutaciones]*
    * El reinstanciamento medio es mayor en trials correctos que incorrectos, a través de participantes *[t(13) = 3.83, p < 0.01]*
    * Es 'ripple-locked' *[asignación aleatoria de índices temporales, correctos versus incorrectos t(13) = 2.42, p < 0.05]*
    * Son patrones específicos para cada memoria ('ripple locked'). *[condiciones verdaderas versus condiciones barajadas (p < 0.01)]*
    )]*

# Conclusiones

## Conclusiones
- Existe un proceso activo para 'recuperar' memorias
- Se basa en el reinstanciamento de patrones previamente realizados en la corteza (que representó dicha memoria)
- Parece ser que un eje relevante de esto son los 'coupled ripples', esto es, sincronización entre MTL y corteza temporal de asociación en la banda 80-120Hz
- ¿Que tan bien se puede caracterizar la representación de una memoria? ¿A qué punto es válido?

![Coupled ripples](/home/nicoluarte/paper_phd/images/paired.png){ width=170px }
