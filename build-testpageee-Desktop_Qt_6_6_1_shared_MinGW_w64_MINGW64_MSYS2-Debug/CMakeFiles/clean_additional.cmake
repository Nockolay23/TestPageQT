# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\apptestpageee_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\apptestpageee_autogen.dir\\ParseCache.txt"
  "apptestpageee_autogen"
  )
endif()
