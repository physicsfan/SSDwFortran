program string_comp
! This program investigates string comparison.
implicit none

print *, 'hi' .eq. 'hi'
print *, ' hi ' == 'hi'
print *, 'hi ' == 'hi'
print *, 'hi  ' == 'hi      '

end program string_comp
