program main
implicit none

real(8) :: GRAVITATIONAL_CONSTANT = 0.000000000066743
real(8) :: MASS_OF_SUN_KG = 1988470000000000000000000000000.0

integer :: choice

print *, "Choose your planet!"
print *, "1 - Mercury"
print *, "2 - Venus"
print *, "3 - Earth"
print *, "4 - Mars"
print *, "5 - Jupiter"
print *, "6 - Saturn"
print *, "7 - Uranus"
print *, "8 - Neptune"
print *, "9 - Pluto"
print *, "Choice: "

read *, choice

real(8) :: radius = 0.0

end program main

! switch (choice) {
!     case 1 -> radius = 69550000000.0;
!     case 2 -> radius = 107550000000.0;
!     case 3 -> radius = 151480000000.0;
!     case 4 -> radius = 211620000000.0;
!     case 5 -> radius = 741850000000.0;
!     case 6 -> radius = 1474100000000.0;
!     case 7 -> radius = 2944700000000.0;
!     case 8 -> radius = 4474000000000.0;
!     case 9 -> radius = 5900000000000.0;
!     default -> System.exit(1);
! }

! int deltaT = 1;
! int time = 0;
! double distanceFromSun = radius;
! double acceleration;
! double velocity = 0.0;
! double deltaV;
! double deltaS;

! while (true) {
!     acceleration = -1 * (GRAVITATIONAL_CONSTANT * MASS_OF_SUN_KG) / (distanceFromSun * distanceFromSun);
!     deltaV = acceleration * deltaT;
!     velocity += deltaV;
!     deltaS = velocity * deltaT;
!     distanceFromSun += deltaS;

!     if (distanceFromSun <= 0.0) {
!         break;
!     }

!     System.out.printf("Time: %ds, acceleration: %fms^-2, velocity: %fms^-1, distance: %fm%n", time, acceleration, velocity, distanceFromSun);

!     time += deltaT;
! }
