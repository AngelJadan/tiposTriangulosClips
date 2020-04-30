(defrule inicio
(initial-fact)
=>
(printout t "ingresa lado a" crlf)
(assert (ladoa (read)))
(printout t "ingresa lado b" crlf)
(assert (ladob (read)))
(printout t "ingresa lado c" crlf)
(assert (ladoc (read)))
)
(
(defrule equilatero
(eq ?ladoa ?ladob ?ladoc)
=>
(assert (tri-equilatero ?ladoa ?ladob ?ladoc))
(printout t "equilatero: todos los lados son iguales")
)
(defrule isosceles 
(igual-a ?ladoa ?ladob)
(tercer-lado ?ladoc)
(test (eq ?ladoa ?ladob))
=>
(assert (tri-isoceles ?ladoa ?ladob ?ladoc))
(printout t "isoceles: dos lados son iguales y uno desigual")
)
(defrule escaleno
(no-igual ?ladoa ?ladob ?ladoc)
(test (neq ?ladoa ?ladob ?ladoc))
=>
(assert (tri-escaleno ?ladoa ?ladob ?ladoc))
(printout t "escaleno: todos los lados son diferentes " crlf)
)
