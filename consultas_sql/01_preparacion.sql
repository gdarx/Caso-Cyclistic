## Para unir los 12 conjuntos en uno solo 

	CREATE TABLE `peak-key-471723-v0.Casos.total_2025` AS
	SELECT * FROM `peak-key-471723-v0.Casos.diciembre_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.noviembre_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.octubre_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.septiembre_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.agosto_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.julio_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.junio_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.mayo_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.abril_2025` 
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.marzo_2025`
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.febrero_2025`
	UNION ALL
	SELECT * FROM `peak-key-471723-v0.Casos.enero_2025` 


