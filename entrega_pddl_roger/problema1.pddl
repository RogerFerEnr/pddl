(define (problem problema1)
    	(:domain robot)
  	(:init (localizacion robot pasillo)
		(localizacion libro salon)
		(localizacion mesa cocina)
		(localizacion cafe cocina)
	 	(localizacion fruta salon)
        (localizacion vaso pasillo)
		(robotLibre)
	)
  	(:goal (and (localizacion mesa salon) (localizacion fruta cocina) (localizacion robot pasillo)))
;el robot se encuentra en el pasillo; tiene que mover la fruta del salón a la cocina, la mesa de la cocina al salón 
; y al final tiene que estar en el pasillo
) 