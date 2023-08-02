program main
    ! Main function that is ran when the program is executed

    implicit none
    integer :: a, b, result

    ! Function prototype (interface) for the add function
    interface
        function add(a, b) result(result)
            implicit none
            integer, intent(in) :: a, b
            integer :: result
        end function add
    end interface

    ! Initialize variables
    a = 10
    b = 20

    ! Call the add function
    result = add(a, b)

    ! Print the result
    print *, "The result of adding ", a, " and ", b, " is ", result
end program main
