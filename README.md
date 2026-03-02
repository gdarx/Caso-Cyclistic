# Caso-Cyclistic
## Resumen ejecutivo
Este proyecto analiza el comportamiento de uso de los usuarios de Cyclistic en Chicago para identificar oportunidades de conversión de clientes ocasionales a socios anuales. El enfoque central de este análisis es maximizar la rentabilidad a largo plazo, dado que los analistas financieros de la empresa determinaron que las membresías anuales son significativamente más rentables.
## Contexto 
En 2016, Cyclistic lanzó un exitoso programa de bicicletas compartidas. Desde entonces, el programa ha crecido hasta contar con una flota de 5824 bicicletas geolocalizadas y conectadas a una red de 692 estaciones en Chicago.

La estrategia de marketing de Cyclistic se basaba en generar conocimiento general y atraer a amplios segmentos de consumidores. Un enfoque que contribuyó a hacer esto posible fue la flexibilidad de sus planes de precios: pases individuales, pases de un día completo y membresías anuales.

Los clientes que compran pases individuales o de un día completo se denominan pasajeros ocasionales.

Los clientes que compran membresías anuales son miembros de Cyclistic.

Los analistas financieros de Cyclistic han concluido que las membresías anuales son mucho más rentables que los pasajeros ocasionales.
Moreno cree que maximizar el número de socios anuales será clave para el crecimiento futuro.

En lugar de crear una campaña de marketing dirigida a nuevos clientes, Moreno cree que existe una gran oportunidad para convertir a ciclistas ocasionales en socios.
Moreno se ha marcado un objetivo claro: diseñar estrategias de marketing dirigidas a convertir a ciclistas ocasionales en socios anuales.

El equipo necesita comprender mejor las diferencias entre los socios anuales y los ciclistas ocasionales, por qué estos últimos adquieren una membresía y cómo los medios digitales podrían influir en sus estrategias de marketing.

## Escenario
El director de marketing cree que el éxito futuro de la empresa depende de maximizar el número de membresías anuales.
Tu equipo quiere comprender cómo los usuarios ocasionales y los usuarios anuales usan las bicicletas de Cyclistic de forma diferente.

Tu equipo diseñará una nueva estrategia de marketing para convertir a los usuarios ocasionales en usuarios anuales.

## Preguntar 
El problema es maximizar el número de socios anuales para asegurar el crecimiento futuro de la empresa.

Se nos ha asignado responder la siguiente pregunta: "¿Cómo diferencian los usuarios anuales y 
los ciclistas ocasionales el uso de las bicicletas Cyclistic?"
## Preparar
### Fuentes de datos utilizadas
Los datos históricos de viajes de Cyclistic, que se encuentran disponibles desde el año 2013 hasta la actualidad. Pero para este análisis, utilice los 12 meses más recientes (enero del 2025 hasta diciembre del 2025).

Cada registro histórico esta almacenado por mes en un archivo .zip, por ejemplo “202006-divvy-tripdata.zip”. El cual contiene un archivo .csv del registro de viaje del mes en cuestión. 

Los conjuntos de datos poseen registros de:  id de cada viaje, fecha y localización del inicio y fin de cada servicio, tipo de consumidor y tipo de producto.

Estos datos han sido puestos a la disposición por Motivate International Inc. 

### Herramientas a utilizar
Excel: utilizado únicamente para la inspección inicial de metadatos.
SQL (BigQuery): utilizado por su capacidad para procesar grandes volúmenes de datos.
Tableau: utilizado para la visualización y detección de patrones geográficos.

## Proceso
Revise el contenido de los conjuntos de datos con Microsoft Excel para verificar que posean las mismas columnas y tipo de datos, al explorar llegue a la conclusión de que iba a ser ineficiente utilizar una herramienta tipo hojas de cálculo para manipular y analizar los datos, ya que existen demasiados registros en cada mes (por ejemplo: 400.000 aprox.). Por lo cual, decidí que la opción más efectiva seria utilizar SQL (BigQuery) porque está diseñado para trabajar con grandes volúmenes de datos.

Para mayor eficiencia, decidí unir los 12 registros históricos de viajes de cada mes, en uno solo. Al realizar esto no se mezclan los datos, ya que como están registrados con fecha y hora, no existe problema con el orden. El resultado de esta unión trajo como resultado un gran conjunto de datos de 5.552.994 de filas.

Explorando en el conjunto de datos descubrí que existen celdas vacías o valores nulos acerca de algunos nombres e id de las estaciones de inicio o final. Pero como el objetivo de mi análisis es investigar el uso a las bicicletas entre los usuarios ocasionales y miembros, estas variables no son relevantes, por lo cual decido no tocar estos registros ya que eliminarlos podría generar un sesgo.

<img width="628" height="169" alt="image" src="https://github.com/user-attachments/assets/f7d108b8-a5aa-44b0-87cc-b06e392dabf7" />

## Ánalisis y Compartir
### ¿Cómo se diferencian los socios y los usuarios ocasionales en el uso de las bicicletas?
<img width="921" height="531" alt="image" src="https://github.com/user-attachments/assets/f304b7f7-3e89-4484-a9ee-06346e13db4e" />

Los miembros realizan más viajes en comparación a los ocasionales.
Los miembros tienen 2 picos relevantes, a las 8:00 y 17:00, esto puede relacionarse al trabajo.
Los ocasionales puede que tengan un uso recreativo

<img width="921" height="457" alt="image" src="https://github.com/user-attachments/assets/75cf7cb1-2755-410f-a6c8-8bbf64a7d847" />

Los ocasionales prefieren mas los fines de semana para viajar en bici.
Por el contrario, los miembros prefieren mas los días de semana.

<img width="921" height="738" alt="image" src="https://github.com/user-attachments/assets/35524e6a-e3aa-48ba-9cd6-ee2be5bb11ef" />

Aumenta en ambos tipos el consumo cuando se encuentran de vacaciones.
Ambos tienen comportamientos similares en relacion a los cambios de estaciones/climáticos.

<img width="921" height="537" alt="image" src="https://github.com/user-attachments/assets/4bbb9077-4a52-4154-85ce-82344dbd39e3" />

En promedio, los ocasionales pedalean el doble de duración en comparación a los miembros.

<img width="921" height="551" alt="image" src="https://github.com/user-attachments/assets/be8b7d4e-8553-4b41-bb05-a8b8bf87904c" />

Ambos prefieren las bicicletas eléctricas sobre las casuales.

<img width="921" height="533" alt="image" src="https://github.com/user-attachments/assets/fa41a5b8-55af-402c-85e0-4e09e1110303" />

Los usuarios ocasionales suelen preferir mas las rutas que se encuentran en la costa
Los miembros suelen preferir mas las rutas que se encuentran en la zona céntrica

## Actuar
### Recomendaciones
Como los usuarios ocasionales mayormente usan el servicio los fines de semana, una recomiendacion para volverlos miembros es crear un plan que se enfoque en los fines de semana, como ofreciendo promociones y/o descuentos, y haciendo énfasis en el uso recreacional.

Otra oportunidad es crear otro tipo de membresía enfocada en el verano, ya que es la época en donde mas se concentra durante el año.

Crear una estrategia de marketing en poner publicidad en las zonas costeras, ya que son los lugares donde los usuarios ocasionales más frecuentan.
