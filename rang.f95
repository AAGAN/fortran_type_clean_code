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
      integer(int8) :: red, blue, veryDarkGreen, purple
    end type colortype
    type(colortype), parameter :: color = colortype(red=1,blue=2,veryDarkGreen=3,purple=6)
    
    print *, color%red, color%blue, color%veryDarkGreen, color%purple
    
    ! The following lines will cause compilation errors 
    ! color%purple = 10 ! parameter cannot be changed
    ! col = color%green ! colortype doesn't have green in it
    ! color%white = 10 ! colortype doesn't have white in it

    red = color%red
    if (red .eq. color%red) then
      print *, "it is red"
    end if
    
    blue = 2
    if (blue .eq. color%blue) then
      print *, "it is blue"
    end if
    
    do col = 1,7
        if (col .eq. color%blue) then
        print *, "it is not blue", color%blue
        else if (col .eq. color%veryDarkGreen) then
        print *, "it is very dark green", color%veryDarkGreen
        else if (col .eq. color%purple) then
        print *, "it is purple", color%purple
        else if (col .eq. color%red) then
        print *, "it is red", color%red
        else 
        print *, "color doesn't exist"
        end if
    end do

End Program Rang
