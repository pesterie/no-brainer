## ----------------------------------------------------------------------------
## Author : Pierre Esterie
## This is free folks !
## ----------------------------------------------------------------------------

function(make_executable)
  foreach(file ${ARGN})
  
      string(REPLACE ".cpp" ".exe" base ${file})
      set(executable "${base}")

      add_executable(${executable} ${file})

  endforeach()
endfunction()
