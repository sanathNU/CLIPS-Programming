(defrule path1-yes
(Starter-turn yes)(petrol yes)=> (assert (cal AA)))

(defrule path1-no
(Starter-turn yes)(petrol no)=> (assert (Buy petrol)))

(defrule path2-no
(Starter-turn no)(Lights-working no )=> (assert (Charge petrol)))

(defrule path2-yes1
(Starter-turn no)(Lights-working yes)(Solenoid-click yes)(Terminals-clean yes)
=> (assert (Replace Starter)))

(defrule path2-yes12
(Starter-turn no)(Lights-working yes)(Solenoid-click yes)(Terminals-clean no)
=> (assert (Clean Terminals)))

(defrule path2-yes2
(Starter-turn no)(Lights-working yes)(Solenoid-click no)(Solenoid-fuse yes)
=> (assert (Replace Solenoid)))

(defrule path2-yes21
(Starter-turn no)(Lights-working yes)(Solenoid-click no)(Solenoid-fuse no)
=> (assert (Replace Fuse)))
