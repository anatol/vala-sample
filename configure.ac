AC_PREREQ([2.65])
AC_INIT([calculator],[1.0],[example@gnome.org])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE
AC_CONFIG_FILES([Makefile
		src/Makefile
		test/Makefile])

LT_INIT
AC_PROG_CC
AM_PROG_VALAC

pkg_modules="glib-2.0 >= 2.24.1
             gobject-2.0 >= 2.24.1"
PKG_CHECK_MODULES(CALCULATOR, [$pkg_modules])
AC_SUBST(CALCULATOR_CFLAGS)
AC_SUBST(CALCULATOR_LIBS)

AC_OUTPUT
