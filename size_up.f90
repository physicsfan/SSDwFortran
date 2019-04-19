program SizingThingsUp
implicit none

real, dimension(10,5) :: a
integer               :: i,j

do j = 1,size(a,2)
   do i = 1,size(a,1)
      a(i,j) = i+j
   enddo
enddo

print *, a

end program SizingThingsUp
