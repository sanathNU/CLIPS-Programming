; A very very very simple script to load and detect animals in database
; There are three rules:- one for duck, another a cat and another a lion
; so in initial facts....since i have defined only cat...so cat part should get triggered
; that is exactly what happened in the clips software
(defrule duck
(animal-is duck) => (assert (sound-is quack))
(printout t"We have a majestic bird here" clrf))

(defrule cat
(animal-is cat) => (assert (sound-is meow))
(printout t"There is a cat here!" clrf"))

(defrule lion
(animal-is lion)=> (assert (sound-is roar))
(printout t"There is a lion hiding among us!" clrf"))

; This part is the defining of initial facts
(deffacts initial-facts
(animal-is wolf)(animal-is cat)(animal-is hyena))  