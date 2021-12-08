Program Rang

    use iso_fortran_env, only : int8, int16, int32, int64

    implicit none

    ! mix and match integer types for demonstration
    integer(int16) :: red
    integer(int32) :: blue
    integer(int64) :: col

    ! create a type with some integer values
    !(probably it's better to put this in a module)
    type colortype
        integer(int8) :: red = 1, blue = 2, veryDarkGreen = 3
    end type colortype
    ! instantiate a variable of type colortype to use in the rest of the program
    type(colortype) :: color

    ! output: 1 2 3
    print *, color%red, color%blue, color%veryDarkGreen

    red = color%red
    if (red .eq. color%red) then
        print *, "it is red"
    end if

    blue = 2
    if (blue .eq. color%blue) then
        print *, "it is blue"
    end if

    col = color%veryDarkGreen
    if (col .eq. color%blue) then
        print *, "it is blue"
    else if (col .eq. color%veryDarkGreen) then
        print *, "it is very dark green"
    else
        print *, "it is red"
    end if

End Program Rang
