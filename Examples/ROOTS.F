PROGRAM roots

! This program solves for the roots of a quadratic equation of the form
! ax^2 + bx + c = 0. It calculates the answers regardless of the type of
! roots that the equation possesses.
! COMPILATION: gfortran -ffree-form program.f -o program.exe

IMPLICIT NONE

! Declare the variables used in this program

REAL :: a 		! Coefficient of x^2 term of equation
REAL :: b 		! Coefficient of x term of equation
REAL :: c 		! Constant term of equation
REAL :: discriminant 	! Discriminant of the equation
REAL :: real_part 	! Real aprt of equation (for complex roots)
REAL :: imag_part 	! Imaginary part of equation (for complex roots)
REAL :: x1 		! First solution of equation (for real roots)
REAL :: x2 		! Second solution of equation (for real roots)

! Prompt the user for the coefficients of the equation
WRITE (*,*) 'This program solves for the roots of a quadratic equation of'
WRITE (*,*) 'the form ax^2 + bx + c = 0.'
WRITE (*,*) 'Enter the coefficients a, b, and c:'
READ (*,*) a, b, c

! Echo back coefficientes
WRITE (*,*) 'The coefficients a, b, and c are: ', a, b, c

! Calculate discriminant
discriminant = b**2 - 4.0*a*c

! Solve for the roots, depending upon the value of the discriminant

IF (discriminant > 0.0) THEN ! there are two real roots

  x1 = (-b + sqrt(discriminant)) / (2.0*a)
  x2 = (-b - sqrt(discriminant)) / (2.0*a)
  WRITE (*,*) 'This equation has two real roots:'
  WRITE (*,*) 'x1 = ', x1
  WRITE (*,*) 'x2 = ', x2

ELSE IF (discriminant == 0.0) THEN ! there is only one root

  x1 = -b/(2.0*a)
  WRITE (*,*) 'This equation has two identical real roots:'
  WRITE (*,*) 'x1 = x2 = ', x1

ELSE ! there are two complex roots

  real_part = -b/(2.0*a)
  imag_part = sqrt(abs(discriminant))/(2.0*a)
  WRITE (*,*) 'This equation has complex roots:'
  WRITE (*,*) 'x1 = ', real_part, ' + i',imag_part
  WRITE (*,*) 'x2 = ', real_part, ' - i',imag_part

END IF

END PROGRAM roots
