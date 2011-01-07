add_library(CalculatorLib calculator.vala)

add_executable(Calculator main.vala)
# TOASK add_dependency or target_link_libraries ?
# How to tell that Calculator needs *.h and *.vala files from CalculatorLib ?
# add_dependencies(Calculator CalculatorLib)
