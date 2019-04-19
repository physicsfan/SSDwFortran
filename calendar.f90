program season
implicit none

integer :: month

print *, 'Enter the month as an integer (1-12):'
read *, month

select case (month)
case(1:2)
   print *, 'It''s Winter'
case(3:5)
   print *, 'It''s Spring'
case(6:8)
   print *, 'It''s Summer'
case(9:11)
   print *, 'It''s Autumn'
case(12)
   print *, 'It''s Winter'
case default
   print *, 'ERROR: month not in range 1-12'
end select

end program season
