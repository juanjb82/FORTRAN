program TableOfValues

  implicit none

  !! Declaration of variables
  real :: a0, a1, a2, a3 ! Polynomial coefficients
  real :: x, y ! Independent and dependent variable
  real :: startpoint, endpoint, stepsize ! Loop parameters

  startpoint = -1.0
  endpoint = 1.0
  stepsize = 0.1

  !! Read coefficients from user
  print *, "Enter the coefficients of the polynomial to be evaluated: "
  print *, "y(x) = a0 + a1 x + a2 x^2 + a3 x^3"

  read *, a0
  read *, a1
  read *, a2
  read *, a3

  !! Calculation

  x = startpoint

  do while (x <= endpoint)

    y = a0 + (a1 + (a2 + a3 * x) * x) * x
    print "(f12.6, f12.6)", x, y 
    x = x + stepsize

  end do

end program TableOfValues
