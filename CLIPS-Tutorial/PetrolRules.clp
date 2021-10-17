(defrule path1-yes
(Starter-turn yes)(petrol yes)=> (printout t"Call the AA Service!"crlf)(assert (cal AA)))

(defrule path1-no
(Starter-turn yes)(petrol no)=> (printout t"Buy More Petrol!"crlf)(assert (Buy petrol)))

(defrule path2-no
(Starter-turn no)(Lights-working no )=>(printout t"Change the battery!"crlf) (assert (Charge Battery)))

(defrule path2-yes1
(Starter-turn no)(Lights-working yes)(Solenoid-click yes)(Terminals-clean yes)
=> (printout t"You need to replace the Starter"crlf)(assert (Replace Starter)))

(defrule path2-yes12
(Starter-turn no)(Lights-working yes)(Solenoid-click yes)(Terminals-clean no)
=> (printout t"You need to clean the terminals"crlf) (assert (Clean Terminals)))

(defrule path2-yes2
(Starter-turn no)(Lights-working yes)(Solenoid-click no)(Solenoid-fuse yes)
=>(printout t"You need to replace the solenoid!"crlf) (assert (Replace Solenoid)))

(defrule path2-yes21
(Starter-turn no)(Lights-working yes)(Solenoid-click no)(Solenoid-fuse no)
=> (printout t"You need to replace the fuse!"crlf)(assert (Replace Fuse)))
