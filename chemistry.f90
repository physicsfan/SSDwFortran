program Chemistry
  use ChemistryModule
  type (ChemicalElementType), pointer :: oxygen
  type (AtomType)                     :: oxygenAtom

  ! Initialize element
  allocate(oxygen)
  oxygen%symbol = 'O'
  oxygen%atomicMass = 15.9994

  !Initialize atom
  oxygenAtom%element => oxygen
  oxygenAtom%position = (/0.0, 0.0, 0.0/)

  ! Print out details of the atom's element
  print *, 'Atoms''s element is ', oxygenAtom%element%symbol

  ! Clean up
  deallocate(oxygen)

end program Chemistry
