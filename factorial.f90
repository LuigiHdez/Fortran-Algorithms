!This program calculates the factorial of a number entered by the user.

program factorial

	!Declare variables
	implicit none
	integer :: n,i
	integer :: factorial_result

	!Prompt user for a positive numer
	print *, 'Ingrese un numero positivo:'
	read(*, *) n

	!Check if the number entered is positive
	if (n<0) then
		print *, 'Ingrese un numero positivo'
	endif

	!Calculate the factorial of n
	factorial_result = 1
	do i = 1, n
		factorial_result = factorial_result * i

	end do

	!Display the result of the factorial of n
	print *, 'El resultado del factorial de', n, 'es', factorial_result
	
end program factorial
