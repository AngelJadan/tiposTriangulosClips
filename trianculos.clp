(deffacts inicio
(ladoa 30)
(ladob 30)
(ladoc 30)
(ladoa 50)
(ladob 50
(ladoc 40)
(ladoa 60)
(ladob 90)
(ladoc 180)
)
(defrule equilatero
(igual-a ?ladoa ?ladob ?ladoc)
(test (eq ?ladoa ?ladob ?ladoc))
=>
(assert (tri-equilatero)
(equilatero ?ladoa ?ladob ?ladoc)
(printout t "equilatero: todos los lados son iguales")
)
(defrule isosceles 
(igual-a ?ladoa ?ladob)
(tercer-lado ?ladoc)
(test (eq ?ladoa ?ladob))
=>
(assert (tri-isoceles)
(isoceles ?ladoa ?ladob ?ladoc)
(printout t "isoceles: dos lados son iguales y uno desigual")
)
(defrule escaleno
(no-igual ?ladoa ?ladob ?ladoc)
(test (neq ?ladoa ?ladob ?ladoc))
=>
(assert (tri-escaleno)
(escaleno ?ladoa ?ladob ?ladoc)
(printout t "escaleno: todos los lados son diferentes " crlf)
)
