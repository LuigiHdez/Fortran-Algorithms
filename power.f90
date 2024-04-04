!Este programa calcula la potencia de un numero dado por el usuario, usando la base y el exponente i>

program power

        !Declaramos variables
        implicit none
        integer :: base, exponent
        integer :: counter, power_result

        !Solicitamos al usuario una base entera positiva
        print *, 'Ingrese una base entera positiva:'
        read(*, *) base

        !Verificamos que la base sea un numero entero positivo
        if (base<0) then
                print *, 'Ingrese una base entera positiva:'
        endif

        !Solicitamos al usuario un exponente entero positivo
        print *, 'Ingrese un exponente entero positivo:'
        read(*, *) exponent

        !Verificamos que el exponente sea un numero entero positivo
        if (exponent<0) then
                print *, 'Ingrese un exponente entero positivo:'
        endif

        !Calculamos la potencia de la base elevada a la potencia ingresadas
        power_result = base
        do counter = 1, exponent-1
                power_result = power_result * base
        end do

        !Mostramos el resultado de la potencia
        print *, 'The result of', base, 'to the power of', exponent, 'is', power_result

end program power

		
