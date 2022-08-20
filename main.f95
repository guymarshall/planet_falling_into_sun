program main
implicit none

real(8) :: GRAVITATIONAL_CONSTANT = 0.000000000066743
real(8) :: MASS_OF_SUN_KG = 1988470000000000000000000000000.0

real(8) :: radius
integer :: choice

integer :: delta_t = 1
integer :: time = 0;
real(8) :: acceleration;
real(8) :: velocity = 0.0;
real(8) :: delta_v;
real(8) :: delta_s;

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

select case (choice)
    case (1)
        radius = 69550000000.0
    case (2)
        radius = 107550000000.0
    case (3)
        radius = 151480000000.0
    case (4)
        radius = 211620000000.0
    case (5)
        radius = 741850000000.0
    case (6)
        radius = 1474100000000.0
    case (7)
        radius = 2944700000000.0
    case (8)
        radius = 4474000000000.0
    case (9)
        radius = 5900000000000.0
    case default
        call exit(1)
end select

do
    acceleration = -1.0 * (GRAVITATIONAL_CONSTANT * MASS_OF_SUN_KG) / (radius ** 2)
    delta_v = acceleration * delta_t
    velocity = velocity + delta_v
    delta_s = velocity * delta_t
    radius = radius + delta_s

    if (radius <= 0.0) then
        call exit(0)
    end if

    print *, "Time: ", time, "s, acceleration: ", acceleration, "ms^-2, velocity: ", velocity, "ms^-1, distance: ", radius, "m"

    time = time + delta_t
end do

end program main
