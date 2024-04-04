!Este programa calcula el factorial de un numero entero positivo ingresado por el usuario.

program factorial

        !Declaramos variables
        implicit none
        integer :: n,i
        integer :: factorial_result

        !Solicitamos un numero entero positivo al usuario
        print *, 'Ingrese un numero entero positivo:'
        read(*, *) n

        !Verificamos que el numero ingresado por el usuario, sea un entero positivo
        if (n<0) then
                print *, 'Ingrese un numero entero positivo'
        endif

        !Calculamos el factorial del numero ingresado por el usuario
        factorial_result = 1
        do i = 1, n
                factorial_result = factorial_result * i
        end do

        !Mostramos el resultado del factorial de dicho numero
        print *, 'El resultado del factorial de', n, 'es', factorial_result

end program factorial


