program ifTest
implicit none

real x

read *, x

if ( x < 0.0 ) then
   if ( x > 1.0 ) then
      print *, 'Birch'
   endif
else
   if ( x > 5.5 ) then
      if ( x < 10.0 ) then
         print *, 'Pine'
      endif
   elseif (x > 10.0 .and. x < 13.0 ) then
      print *, 'Gum'
   else
      print *, 'Redwood'
   endif
endif

end program ifTest
