print "Calculadora de MULTIPLICACIÓN Y DIVISIÓN EN FORMA POLAR "
print "		Realizado por Aldo Zetina y Ana Laura Mendoza"


print "Para continuar presiona una tecla"

iniens ' start asm block, consume key
jsr lee#car
finens

polar:		
				'pi = 3.14159265358979323846
                'convertir_a_radianes = 0.01745329
                'convertir_a_grados = 57.2957795
				' Introduccion de datos
                rm = 0
                rg = 0
                magnitud1 = 0
                magnitud2 = 0

                input "Ingrese la magnitud del primer número complejo:",magnitud1
				
                input "Ingrese el ángulo (en grados) del primer número complejo: ",anguloGrados1
				
                input "Ingrese la magnitud del segundo número complejo:",magnitud2
				
                input "Ingrese el ángulo (en grados) del segundo número complejo: ",anguloGrados2

                'Escojer si dividir o multiplicar

                input "Elija la operación (1 para multiplicar, 2 para dividir): ",operacion

                if operacion = 1 then
                    'Realiza la operacion de la marnitud  
                    rm = magnitud1*(magnitud2)
                    rg = anguloGrados1+anguloGrados2
                    
                    'Imprime el resultado de la operacion 
                    print "El resultado de la multiplicación es:"
                    print "Magnitud:";rm
                    print "Grados:";rg

                elseif operacion = 2 then

                    'Realiza la operacion de la marnitud      
                    rm = magnitud1/(magnitud2)
                    rg = anguloGrados1-anguloGrados2

                    'Imprime el resultado de la operacion 
                    print "El resultado de la divicion es:"
                    print "Magnitud:";rm
                    print "Grados:";rg

                else
                    'Si es que se agrega una letra diferente
                    print "Operación no válida."

                endif
				
				print "Presiona cualquier tecla para ingresar otra ecuacioon..."

				iniens ' start of asm block
				jsr lee#car 'Consumes the \n
				finens	' end of asm block
				CLS	' clear screen

				goto polar	' loop to beginning