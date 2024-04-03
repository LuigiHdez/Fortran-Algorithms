!This program calculates the exponentiation of a number entered by the user.

program exponentiation

	!Declare variables
	implicit none
	integer :: base, exponent
	integer :: counter, power_result

	!Prompt the user for a positive base number.
	print *, 'Enter a positive base:'
	read(*, *) base

	!Check if the entered base number is positive.
	if (base<0) then
		print *, 'Enter a positive base:'
	endif

	!Prompt the user for a positive exponent number.
	print *, 'Enter a positive exponent:'
	read(*, *) exponent
		
	!Check if the entered exponent number is positive.
	if (exponent<0) then
		print *, 'Enter a positive exponent:'
	endif

	!Calculate the exponentiation of the base raised to the exponent.
	power_result = base
	do counter = 1, exponent-1
		power_result = power_result * base
		
	end do

	!Display the result of the exponentiation of the base raised to the exponent.
	print *, 'The result of', base, 'to the power of', exponent, 'is', power_result
	
end program exponentiation
		
