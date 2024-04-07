program suma_matriz_secuencial
    ! Importa el módulo iso_fortran_env y define un alias 'sp' para REAL64
    use, intrinsic :: iso_fortran_env, only: sp => REAL64
    
    ! Obliga a declarar todas las variables explícitamente
    implicit none

    ! Define los parámetros
    integer, parameter :: N = 1000
    integer, parameter :: M = 1000
    integer :: matriz(N, M)
    integer :: i, j, suma
    integer :: start_clock, end_clock, clock_rate

    ! Declara variables de punto flotante para medir el tiempo
    real(sp) :: start_time, end_time, elapsed_time
    

    ! Inicializar la matriz
    do i = 1, N
        do j = 1, M
            matriz(i, j) = i + j
        end do
    end do

    suma = 0

    ! Medir el tiempo de inicio
    call system_clock(start_clock)

    ! Calcular la suma de la matriz
    do i = 1, N
        do j = 1, M
            suma = suma + matriz(i, j)
        end do
    end do

    ! Medir el tiempo de finalización
    call system_clock(end_clock)

    ! Obtener la frecuencia del reloj
    call system_clock(count_rate=clock_rate)

    ! Calcular el tiempo transcurrido
    start_time = real(start_clock, sp) / real(clock_rate, sp)
    end_time = real(end_clock, sp) / real(clock_rate, sp)
    elapsed_time = end_time - start_time

    ! Imprimir resultados
    print *, 'Tiempo de ejecución en secuencial:', elapsed_time, 'segundos'
    print *, 'La suma de la matriz es:', suma

end program suma_matriz_secuencial