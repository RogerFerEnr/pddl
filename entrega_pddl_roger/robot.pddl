(define (domain robot)	       
  (:requirements :strips :typing)
  ;(:types 
  ;cocina salon pasillo - lugares
  ;libro fruta cafe vaso mesa - objetos
  ;)
 
  (:constants robot cocina salon pasillo libro fruta cafe vaso mesa) 
 
  (:predicates (localizacion ?objeto  ?lugar)
	       (posesion ?entidad ?objeto)
               (robotLibre))
  
; Coger libro

(:action IR-A
	     :parameters (?lugar1 ?lugar2)
	     :precondition (and (localizacion robot ?lugar1))
	     :effect (and (localizacion robot ?lugar2) (not (localizacion robot ?lugar1)))
)

(:action AGARRAR-OBJETO
        :parameters (?objeto ?lugar)
        :precondition (and (robotLibre) (localizacion ?objeto ?lugar) (localizacion robot ?lugar))
        :effect (and (not (robotLibre)) (posesion robot ?objeto) (not (localizacion ?objeto ?lugar)))
)

(:action DEJAR-OBJETO
        :parameters (?objeto ?lugar)
        ;:precondition (and (not (robotLibre)) (posesion robot ?objeto) (localizacion robot ?lugar))
        :precondition (and (posesion robot ?objeto) (localizacion robot ?lugar))
        :effect (and (robotLibre) (not (posesion robot ?objeto)) (localizacion ?objeto ?lugar) (localizacion robot ?lugar))
)

)