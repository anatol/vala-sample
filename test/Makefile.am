AM_CPPFLAGS = $(CALCULATOR_CFLAGS) -I$(top_srcdir)/src

TESTS = \
	calculator-test

check_PROGRAMS = $(TESTS)

calculator_test_SOURCES = calculator_test.vala
calculator_test_LDADD = $(top_builddir)/src/libcalculator.la $(CALCULATOR_LIBS)
calculator_test_VALAFLAGS = $(top_builddir)/src/calculator.vapi

CLEANFILES = *.c *.stamp test-report.xml test-report.html
