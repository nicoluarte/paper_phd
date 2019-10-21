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
- Reinstatement

# Resultados

# Conclusiones
