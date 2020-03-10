program Triangle

  implicit none

  !! Declaration of variables
  real :: a, b, c, angle_a, p, area
  b = 3.0
  c = 5.0
  angle_a = 50 * 6.2831853071 / 360.0

  !! Calculations

  ! Unknown side
  a = sqrt(b**2 + c**2 - 2.0 * b * c * cos(angle_a))

  ! Perimeter
  p = a + b + c

  ! Area
  area = 0.5 * b * c * sin(angle_a)

  !! Output
  print *, a, p, area

end program Triangle
