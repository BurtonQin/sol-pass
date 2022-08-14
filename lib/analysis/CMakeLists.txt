add_library(SolAnalysisPass MODULE
  # List your source files here.
  StaticCallCounter.cpp
)

target_include_directories(
  SolAnalysisPass
  PRIVATE
  "${CMAKE_CURRENT_SOURCE_DIR}/../../include/"
)

target_link_libraries(
  SolAnalysisPass
  "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>"
)
