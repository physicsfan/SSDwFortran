module ChemistryModule

  type ChemicalElementType
     character(3) :: symbol
     real         :: atomicMass
  end type ChemicalElementType

  type AtomType
     type (ChemicalElementType), pointer :: element
     real                                :: position(3)
  end type AtomType

end module ChemistryModule
