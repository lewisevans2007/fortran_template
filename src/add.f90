function add(a, b) result(result)
    ! Adds two integers and returns the result

    implicit none
    integer, intent(in) :: a, b
    integer :: result

    result = a + b
end function add
