Program Rang
    
    use iso_fortran_env, only : int8, int16, int32, int64
    
    implicit none
    
    integer(int16) :: red
    integer(int32) :: blue
    integer(int64) :: col
    
    type colortype
      integer(int8) :: red = 1, blue = 2, veryDarkGreen = 3
    end type colortype
    type(colortype) :: color
    
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
      print *, "it is not blue"
    else if (col .eq. color%veryDarkGreen) then
      print *, "it is very dark green"
    else 
      print *, "it is red"
    end if

End Program Rang