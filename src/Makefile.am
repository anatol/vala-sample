AM_CPPFLAGS = $(CALCULATOR_CFLAGS)

bin_PROGRAMS = calculator
noinst_LTLIBRARIES = libcalculator.la

libcalculator_la_SOURCES = calculator.vala
libcalculator_la_VALAFLAGS = --library calculator -H calculator.h

calculator_SOURCES = main.vala
calculator_LDADD = libcalculator.la $(CALCULATOR_LIBS)
calculator_VALAFLAGS = calculator.vapi

CLEANFILES = *.h *.c *.vapi *.stamp
