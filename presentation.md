---
title: "Coupled ripple oscillations between the medial temporal lobe and neocortex retrieve human memory supplementary"
author: Nicolás Luarte
date: 22 de Octubre
output: 
    beamer_presentation:
theme: "Antibes"
---

# Introducción

## Modelos de memoria
- Puntos de partida del artículo

## Recuperación de memoria y 'ripples'

- Hipótesis central

    'Coupled ripples may constitute neural mechanisms for actively retrieving memory representation in the human brain.'
    
- Mecánismo propuesto
- Estructuras principales involucradas

# Método

## Tarea

- Aprender nuevas asociaciones entre pares de palabras ('encoding phase')
- Dada una palabra del par, debían decir el par correspondiente ('retrieval period'), mediante la voz
- Dos tipos de tareas muy similares
- 3.9 sesiones por participante, 60, 100 o 150 pares de palabras

![Tarea](/home/nicoluarte/paper_phd/images/task.png)

## Mediciones

- Registros intracraneales ('iEEG')
    * Tasa de muestreo: [1000, 2000]Hz
    * 29.8 ± 2.5 puntos de registro (aplicados al estudio)
- Localización
    * Lóbulo temporal medial ('MTL')
    * Lóbulo temporal anterior ('ATL')
    * Giro temporal medio ('MTG')
    * Control: corteza somatosensorial (menos conectividad hipocampal)
    
![Densidad electrodos](/home/nicoluarte/paper_phd/images/eeg_recordings.png){ width=250px }
    
## Operacionalización de variables (1)
- Ripples:
    * Filtro paso banda (80-120 Hz)
    * Butterworth filter
    * 2 $\sigma$ a 3 $\sigma$
    * Hilbert transform
    * Duración $\ge$ 25ms
    * Se unieron 'ripples' con distancia < 15ms
    * Duración: diferencia entre fin e inicio
    
## Operacionalización de variables (2)
- Coupled ripples:
    * Ripples sincronizados
    * Correlación cruzada [ATL, Primary Cortex] y MTL
    * 'Shift predictor'[^bignote]
    
![Coupled ripples](/home/nicoluarte/paper_phd/images/coupled_ripples.png){ width=250px }
       
[^bignote]: Se considera una línea base por azar. Se crea mediante correlación cruzada entre un trial dado y el resto. Coincidencias por segundo por par de electrodos.

## Operacionalización de las variables (3)
- Sincronización
    * Sumatoria ventana $\pm$ 50ms / área por chance

![Sincronización](/home/nicoluarte/paper_phd/images/sinchronization.png){ width=350px }

## Estadística (1)
- Unión ('coupling') áreas corteza temporal vs corteza primaria
    * Prueba de t pareada, compara versus distribución por 'chance'
    
- Unión ('coupling') áreas cerebrales por par de electrodos
    * Prueba de t pareada, p < 0.05 = 'coupled electrode'
- Probabilidades [ripples, coupled ripples]

## Estadística (2)
- Probabilidad condicional
    * $p(electrodo cortical | electrodo MTL) = p(m, c) / p(m)$
    * $p(electrodo MTL | electrodo cortical) = p(m, c) / p(c)$
   
    Con esto se determina que el incremento de 'coupled ripples' no se debe al
    aumento de probabilidad por el hecho de que el electrodo simplemente tenga
    mas ripples en total.
    
## Estadística (3)
- Reinstanciamiento ('reinstatement')
    * Vector de caractrísticas codificación ('encoding')
    $E_{i} = [Z_{1, 1}(i) \ldots Z_{1, F}(i) \ldots Z_{L, F}(i)]$
    * Vector de caractrísticas evocación ('retrieval')
    $E_{j} = [Z_{1, 1}(j) \ldots Z_{1, F}(j) \ldots Z_{L, F}(j)]$
    
    <span style="font-family:Papyrus; font-size:4em;">
    Los sub-índices representan número de electrodo y número de la banda de
    frecuencia[^1], respectivamente, en unidad de puntuación estandar.
    Se calculó la similitud de coseno para cada época del par de entradas en el
    vector. 
    </span>
    
    $C_{n}(i, j) = \frac{E_{i} \cdot R_{j}}{||E_{i}||||R_{j}||}$

- Test de permutaciones (test de t) para diferencias entre correctos e incorrectos
    
[^1]: [delta(1-3), theta(3-8), alpha(8-12), beta(12-30), gamma(30-80),
    ripple band(80-120)]Hz
    

# Resultados

# Conclusiones
