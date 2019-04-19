program ArraySlice2
implicit none

integer, dimension(3) :: a, b
a = (/1,0,0/)
b = (/0,1,0/)
a(2:3) = 2 * b(::2)
print *, a
end program ArraySlice2
