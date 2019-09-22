      PROGRAM DECAY
*********************************************
* This program calculates the amount of a   *
* radioactive substance that remains after  *
* a specified time, given an initial amount *
* and its half-life. Variables used are:    *
* INIT:  initial amount of substance        *
* HLIFE: half-life of substance             *
* TIME:  time at which the amount           *
*        remaining is calculated            *
* RESID: amount remaining                   *
*********************************************

      REAL INIT, HLIFE, TIME, RESID

      PRINT *, 'ENTER INITIAL AMOUNT, HALF-LIFE AND TIME'
      READ *, INIT, HLIFE, TIME
      RESID = INIT*0.5**(TIME/HLIFE)
      PRINT *, 'AMOUNT REMAINING = ', RESID

      END
