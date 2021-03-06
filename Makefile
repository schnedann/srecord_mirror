#
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#
#    W   W    A    RRRR   N   N   III  N   N  III  N   N   GGG
#    W   W   A A   R   R  NN  N    I   NN  N   I   NN  N  G   G
#    W   W  A   A  RRRR   N N N    I   N N N   I   N N N  G
#    W W W  AAAAA  R R    N  NN    I   N  NN   I   N  NN  G  GG
#    W W W  A   A  R  R   N   N    I   N   N   I   N   N  G   G
#     W W   A   A  R   R  N   N   III  N   N  III  N   N   GGG
#
# Warning: DO NOT send patches which fix this file. IT IS NOT the original
# source file. This file is GENERATED from the Aegis repository file manifest.
# If you find a bug in this file, it could well be an Aegis bug.
#
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#

#
# Makefile.  Generated from Makefile.in by configure.
#
# The configure script generates 2 files:
# 1. This Makefile
# 2. srecord/config.h
# If you change this Makefile, you may also need to change these files. To see
# what is configured by the configure script, search for @ in the Makefile.in
# file.
#
# If you wish to reconfigure the installations directories it is RECOMMENDED
# that you re-run the configure script.
#
# Use "./configure --help" for a list of options.
#

#
# directory containing the source
#
srcdir = .


#
# the name of the install program to use
#
INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_DIR = /usr/bin/install -c -m 0755 -d

#
# The name of the C++ compiler to use.
#
CXX = g++

#
# The C++ compiler flags to use.
#
CXXFLAGS = -g -O2

#
# The C++ preprocessor flags to use.
#
CPPFLAGS = 

#
# The linker flags to use
#
LDFLAGS = 

#
# prefix for installation path
#
prefix = /usr/local
exec_prefix = /usr/local

#
# Where to put the executables.
#
# On a network, this would only be shared between machines of identical
# cpu-hw-os flavour. It can be read-only.
#
# The $(DESTDIR) is for packaging.
#
bindir = $(DESTDIR)/usr/local/bin

#
# Where to put the manuals.
#
# On a network, this would be shared between all machines on the network. It can
# be read-only.
#
# The $(DESTDIR) is for packaging.
#
mandir = $(DESTDIR)/usr/local/share/man

# define this to silence ./configure warning
datarootdir = $(DESTDIR)/usr/local/share

#
# Where to put the supplementary package executables.
#
# On a network, this would be shared between all machines of identical
# architecture. It can be read-only.
#
# The $(DESTDIR) is for packaging.
#
libdir = $(DESTDIR)/usr/local/lib

#
# Where to put the include files for the library.
#
# On a network, this would be shared between all machines of identical
# architecture. It can be read-only.
#
# The $(DESTDIR) is for packaging.
#
includedir = $(DESTDIR)${prefix}/include

#
# The name of the GNU Libtool command.
#
LIBTOOL = libtool

#
# extra libraries required for your system
#
LIBS = -lgcrypt -lgpg-error 

#
# shell to use to run tests and commands
#
SH = /bin/sh

#
# Set GROFF to the name of the roff command on your system, usually "groff" or
# "troff" or "nroff".
#
GROFF = groff

#
# Set SOELIM to the name of the roff proprocessor command on your system,
# usually "soelim" or "gsoelim".
#
SOELIM = soelim

# ---------------------------------------------------------
# You should not need to change anything below this line.

#
# The default target
#
the-default-target: all

etc/BUILDING.pdf: etc/BUILDING.man
	$(GROFF) -Tps -s -I. -t -man etc/BUILDING.man > etc/BUILDING.ps
	ps2pdf etc/BUILDING.ps $@
	rm etc/BUILDING.ps

$(datarootdir)/doc/srecord/BUILDING.pdf: .mkdir.__datarootdir__doc_srecord \
		etc/BUILDING.pdf
	$(INSTALL_DATA) etc/BUILDING.pdf $@

etc/Howto.conf: config.status etc/Howto.conf.in
	CONFIG_FILES=$@:etc/Howto.conf.in CONFIG_HEADERS= $(SH) config.status

etc/README.pdf: etc/README.man etc/new.1.1.so etc/new.1.10.so etc/new.1.11.so \
		etc/new.1.12.so etc/new.1.13.so etc/new.1.14.so \
		etc/new.1.15.so etc/new.1.16.so etc/new.1.17.so \
		etc/new.1.18.so etc/new.1.19.so etc/new.1.2.so etc/new.1.20.so \
		etc/new.1.21.so etc/new.1.22.so etc/new.1.23.so \
		etc/new.1.24.so etc/new.1.25.so etc/new.1.26.so \
		etc/new.1.27.so etc/new.1.28.so etc/new.1.29.so etc/new.1.3.so \
		etc/new.1.30.so etc/new.1.31.so etc/new.1.32.so \
		etc/new.1.33.so etc/new.1.34.so etc/new.1.35.so \
		etc/new.1.36.so etc/new.1.37.so etc/new.1.38.so \
		etc/new.1.39.so etc/new.1.4.so etc/new.1.40.so etc/new.1.41.so \
		etc/new.1.42.so etc/new.1.43.so etc/new.1.44.so \
		etc/new.1.45.so etc/new.1.46.so etc/new.1.47.so \
		etc/new.1.48.so etc/new.1.49.so etc/new.1.5.so etc/new.1.50.so \
		etc/new.1.51.so etc/new.1.52.so etc/new.1.53.so \
		etc/new.1.54.so etc/new.1.55.so etc/new.1.56.so \
		etc/new.1.57.so etc/new.1.58.so etc/new.1.59.so etc/new.1.6.so \
		etc/new.1.60.so etc/new.1.61.so etc/new.1.62.so \
		etc/new.1.63.so etc/new.1.64.so etc/new.1.7.so etc/new.1.8.so \
		etc/new.1.9.so
	$(GROFF) -Tps -s -I. -t -man etc/README.man > etc/README.ps
	ps2pdf etc/README.ps $@
	rm etc/README.ps

$(datarootdir)/doc/srecord/README.pdf: .mkdir.__datarootdir__doc_srecord \
		etc/README.pdf
	$(INSTALL_DATA) etc/README.pdf $@

etc/change_log.pdf: etc/change_log.man etc/new.1.1.so etc/new.1.10.so \
		etc/new.1.11.so etc/new.1.12.so etc/new.1.13.so \
		etc/new.1.14.so etc/new.1.15.so etc/new.1.16.so \
		etc/new.1.17.so etc/new.1.18.so etc/new.1.19.so etc/new.1.2.so \
		etc/new.1.20.so etc/new.1.21.so etc/new.1.22.so \
		etc/new.1.23.so etc/new.1.24.so etc/new.1.25.so \
		etc/new.1.26.so etc/new.1.27.so etc/new.1.28.so \
		etc/new.1.29.so etc/new.1.3.so etc/new.1.30.so etc/new.1.31.so \
		etc/new.1.32.so etc/new.1.33.so etc/new.1.34.so \
		etc/new.1.35.so etc/new.1.36.so etc/new.1.37.so \
		etc/new.1.38.so etc/new.1.39.so etc/new.1.4.so etc/new.1.40.so \
		etc/new.1.41.so etc/new.1.42.so etc/new.1.43.so \
		etc/new.1.44.so etc/new.1.45.so etc/new.1.46.so \
		etc/new.1.47.so etc/new.1.48.so etc/new.1.49.so etc/new.1.5.so \
		etc/new.1.50.so etc/new.1.51.so etc/new.1.52.so \
		etc/new.1.53.so etc/new.1.54.so etc/new.1.55.so \
		etc/new.1.56.so etc/new.1.57.so etc/new.1.58.so \
		etc/new.1.59.so etc/new.1.6.so etc/new.1.60.so etc/new.1.61.so \
		etc/new.1.62.so etc/new.1.63.so etc/new.1.64.so etc/new.1.7.so \
		etc/new.1.8.so etc/new.1.9.so
	$(GROFF) -Tps -s -I. -t -man etc/change_log.man > etc/change_log.ps
	ps2pdf etc/change_log.ps $@
	rm etc/change_log.ps

$(datarootdir)/doc/srecord/change_log.pdf: .mkdir.__datarootdir__doc_srecord \
		etc/change_log.pdf
	$(INSTALL_DATA) etc/change_log.pdf $@

etc/debian.png: etc/debian.png.uue
	uudecode -o $@ etc/debian.png.uue

etc/doc_cat.png: etc/doc_cat.png.uue
	uudecode -o $@ etc/doc_cat.png.uue

etc/doc_chip.png: etc/doc_chip.png.uue
	uudecode -o $@ etc/doc_chip.png.uue

etc/doc_gen.png: etc/doc_gen.png.uue
	uudecode -o $@ etc/doc_gen.png.uue

etc/doc_lens.png: etc/doc_lens.png.uue
	uudecode -o $@ etc/doc_lens.png.uue

etc/doc_lib.png: etc/doc_lib.png.uue
	uudecode -o $@ etc/doc_lib.png.uue

etc/reference.pdf: etc/BUILDING.man etc/README.man etc/coding-style.so \
		etc/new-file-format.so etc/new-filter.so etc/new.1.1.so \
		etc/new.1.10.so etc/new.1.11.so etc/new.1.12.so \
		etc/new.1.13.so etc/new.1.14.so etc/new.1.15.so \
		etc/new.1.16.so etc/new.1.17.so etc/new.1.18.so \
		etc/new.1.19.so etc/new.1.2.so etc/new.1.20.so etc/new.1.21.so \
		etc/new.1.22.so etc/new.1.23.so etc/new.1.24.so \
		etc/new.1.25.so etc/new.1.26.so etc/new.1.27.so \
		etc/new.1.28.so etc/new.1.29.so etc/new.1.3.so etc/new.1.30.so \
		etc/new.1.31.so etc/new.1.32.so etc/new.1.33.so \
		etc/new.1.34.so etc/new.1.35.so etc/new.1.36.so \
		etc/new.1.37.so etc/new.1.38.so etc/new.1.39.so etc/new.1.4.so \
		etc/new.1.40.so etc/new.1.41.so etc/new.1.42.so \
		etc/new.1.43.so etc/new.1.44.so etc/new.1.45.so \
		etc/new.1.46.so etc/new.1.47.so etc/new.1.48.so \
		etc/new.1.49.so etc/new.1.5.so etc/new.1.50.so etc/new.1.51.so \
		etc/new.1.52.so etc/new.1.53.so etc/new.1.54.so \
		etc/new.1.55.so etc/new.1.56.so etc/new.1.57.so \
		etc/new.1.58.so etc/new.1.59.so etc/new.1.6.so etc/new.1.60.so \
		etc/new.1.61.so etc/new.1.62.so etc/new.1.63.so \
		etc/new.1.64.so etc/new.1.7.so etc/new.1.8.so etc/new.1.9.so \
		etc/ref-toc.so etc/reference.man man/man1/o_at.so \
		man/man1/o_ignore_checksums.so man/man1/o_input.so \
		man/man1/o_multiple.so man/man1/o_sequence.so \
		man/man1/srec_cat.1 man/man1/srec_cmp.1 \
		man/man1/srec_examples.1 man/man1/srec_info.1 \
		man/man1/srec_input.1 man/man1/srec_license.1 \
		man/man1/z_copyright.so man/man1/z_exit.so \
		man/man1/z_options.so man/man3/srecord.3 \
		man/man3/srecord_license.3 man/man5/srec_aomf.5 \
		man/man5/srec_ascii_hex.5 man/man5/srec_atmel_generic.5 \
		man/man5/srec_binary.5 man/man5/srec_brecord.5 \
		man/man5/srec_coe.5 man/man5/srec_cosmac.5 \
		man/man5/srec_dec_binary.5 man/man5/srec_emon52.5 \
		man/man5/srec_fairchild.5 man/man5/srec_fastload.5 \
		man/man5/srec_formatted_binary.5 man/man5/srec_forth.5 \
		man/man5/srec_fpc.5 man/man5/srec_idt.5 man/man5/srec_intel.5 \
		man/man5/srec_intel16.5 man/man5/srec_logisim.5 \
		man/man5/srec_mem.5 man/man5/srec_mif.5 \
		man/man5/srec_mips_flash.5 man/man5/srec_mos_tech.5 \
		man/man5/srec_motorola.5 man/man5/srec_msbin.5 \
		man/man5/srec_needham.5 man/man5/srec_os65v.5 \
		man/man5/srec_ppb.5 man/man5/srec_ppx.5 \
		man/man5/srec_signetics.5 man/man5/srec_spasm.5 \
		man/man5/srec_spectrum.5 man/man5/srec_stewie.5 \
		man/man5/srec_tektronix.5 man/man5/srec_tektronix_extended.5 \
		man/man5/srec_ti_tagged.5 man/man5/srec_ti_tagged_16.5 \
		man/man5/srec_ti_txt.5 man/man5/srec_trs80.5 \
		man/man5/srec_vmem.5 man/man5/srec_wilson.5
	$(GROFF) -Tps -s -I. -t -man etc/reference.man > etc/reference.ps
	ps2pdf etc/reference.ps $@
	rm etc/reference.ps

$(datarootdir)/doc/srecord/reference.pdf: .mkdir.__datarootdir__doc_srecord \
		etc/reference.pdf
	$(INSTALL_DATA) etc/reference.pdf $@

etc/srecord.png: etc/srecord.png.uue
	uudecode -o $@ etc/srecord.png.uue

etc/whining.png: etc/whining.png.uue
	uudecode -o $@ etc/whining.png.uue

libdir/pkgconfig/srecord.pc: config.status libdir/pkgconfig/srecord.pc.in
	CONFIG_FILES=$@:libdir/pkgconfig/srecord.pc.in CONFIG_HEADERS= $(SH) \
		config.status

$(libdir)/pkgconfig/srecord.pc: .mkdir.__libdir__pkgconfig \
		libdir/pkgconfig/srecord.pc
	$(INSTALL_DATA) libdir/pkgconfig/srecord.pc $@

man/cat1/srec_cat.1: man/man1/o_at.so man/man1/o_ignore_checksums.so \
		man/man1/o_input.so man/man1/o_sequence.so man/man1/srec_cat.1 \
		man/man1/z_copyright.so man/man1/z_exit.so man/man1/z_options.so
	@mkdir -p man/cat1
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man1/srec_cat.1 > $@

$(mandir)/man1/srec_cat.1: .mkdir.__mandir__man1 man/man1/o_at.so \
		man/man1/o_ignore_checksums.so man/man1/o_input.so \
		man/man1/o_sequence.so man/man1/srec_cat.1 \
		man/man1/z_copyright.so man/man1/z_exit.so man/man1/z_options.so
	$(SOELIM) -I. man/man1/srec_cat.1 | sed '/^[.]XX ./d' > \
		man/man1/srec_cat.1.tmp
	$(INSTALL_DATA) man/man1/srec_cat.1.tmp $@
	@rm -f man/man1/srec_cat.1.tmp

man/cat1/srec_cmp.1: man/man1/o_at.so man/man1/o_ignore_checksums.so \
		man/man1/o_input.so man/man1/o_multiple.so \
		man/man1/o_sequence.so man/man1/srec_cmp.1 \
		man/man1/z_copyright.so man/man1/z_exit.so man/man1/z_options.so
	@mkdir -p man/cat1
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man1/srec_cmp.1 > $@

$(mandir)/man1/srec_cmp.1: .mkdir.__mandir__man1 man/man1/o_at.so \
		man/man1/o_ignore_checksums.so man/man1/o_input.so \
		man/man1/o_multiple.so man/man1/o_sequence.so \
		man/man1/srec_cmp.1 man/man1/z_copyright.so man/man1/z_exit.so \
		man/man1/z_options.so
	$(SOELIM) -I. man/man1/srec_cmp.1 | sed '/^[.]XX ./d' > \
		man/man1/srec_cmp.1.tmp
	$(INSTALL_DATA) man/man1/srec_cmp.1.tmp $@
	@rm -f man/man1/srec_cmp.1.tmp

man/cat1/srec_examples.1: man/man1/srec_examples.1 man/man1/z_copyright.so
	@mkdir -p man/cat1
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man1/srec_examples.1 \
		> $@

$(mandir)/man1/srec_examples.1: .mkdir.__mandir__man1 man/man1/srec_examples.1 \
		man/man1/z_copyright.so
	$(SOELIM) -I. man/man1/srec_examples.1 | sed '/^[.]XX ./d' > \
		man/man1/srec_examples.1.tmp
	$(INSTALL_DATA) man/man1/srec_examples.1.tmp $@
	@rm -f man/man1/srec_examples.1.tmp

man/cat1/srec_info.1: man/man1/o_at.so man/man1/o_ignore_checksums.so \
		man/man1/o_input.so man/man1/o_multiple.so \
		man/man1/o_sequence.so man/man1/srec_info.1 \
		man/man1/z_copyright.so man/man1/z_exit.so man/man1/z_options.so
	@mkdir -p man/cat1
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man1/srec_info.1 > $@

$(mandir)/man1/srec_info.1: .mkdir.__mandir__man1 man/man1/o_at.so \
		man/man1/o_ignore_checksums.so man/man1/o_input.so \
		man/man1/o_multiple.so man/man1/o_sequence.so \
		man/man1/srec_info.1 man/man1/z_copyright.so \
		man/man1/z_exit.so man/man1/z_options.so
	$(SOELIM) -I. man/man1/srec_info.1 | sed '/^[.]XX ./d' > \
		man/man1/srec_info.1.tmp
	$(INSTALL_DATA) man/man1/srec_info.1.tmp $@
	@rm -f man/man1/srec_info.1.tmp

man/cat1/srec_input.1: man/man1/o_ignore_checksums.so man/man1/o_multiple.so \
		man/man1/srec_input.1 man/man1/z_copyright.so \
		man/man1/z_options.so
	@mkdir -p man/cat1
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man1/srec_input.1 > $@

$(mandir)/man1/srec_input.1: .mkdir.__mandir__man1 \
		man/man1/o_ignore_checksums.so man/man1/o_multiple.so \
		man/man1/srec_input.1 man/man1/z_copyright.so \
		man/man1/z_options.so
	$(SOELIM) -I. man/man1/srec_input.1 | sed '/^[.]XX ./d' > \
		man/man1/srec_input.1.tmp
	$(INSTALL_DATA) man/man1/srec_input.1.tmp $@
	@rm -f man/man1/srec_input.1.tmp

man/cat1/srec_license.1: man/man1/srec_license.1
	@mkdir -p man/cat1
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man1/srec_license.1 > \
		$@

$(mandir)/man1/srec_license.1: .mkdir.__mandir__man1 man/man1/srec_license.1
	sed '/^[.]XX ./d' < man/man1/srec_license.1 > \
		man/man1/srec_license.1.tmp
	$(INSTALL_DATA) man/man1/srec_license.1.tmp $@
	@rm -f man/man1/srec_license.1.tmp

man/cat3/srecord.3: man/man1/z_copyright.so man/man3/srecord.3
	@mkdir -p man/cat3
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man3/srecord.3 > $@

$(mandir)/man3/srecord.3: .mkdir.__mandir__man3 man/man1/z_copyright.so \
		man/man3/srecord.3
	$(SOELIM) -I. man/man3/srecord.3 > man/man3/srecord.3.tmp
	$(INSTALL_DATA) man/man3/srecord.3.tmp $@
	@rm -f man/man3/srecord.3.tmp

man/cat3/srecord_license.3: man/man3/srecord_license.3
	@mkdir -p man/cat3
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man3/srecord_license.3 > $@

$(mandir)/man3/srecord_license.3: .mkdir.__mandir__man3 \
		man/man3/srecord_license.3
	sed '/^[.]XX ./d' < man/man3/srecord_license.3 > \
		man/man3/srecord_license.3.tmp
	$(INSTALL_DATA) man/man3/srecord_license.3.tmp $@
	@rm -f man/man3/srecord_license.3.tmp

man/cat5/srec_aomf.5: man/man1/z_copyright.so man/man5/srec_aomf.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_aomf.5 > $@

$(mandir)/man5/srec_aomf.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_aomf.5
	$(SOELIM) -I. man/man5/srec_aomf.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_aomf.5.tmp
	$(INSTALL_DATA) man/man5/srec_aomf.5.tmp $@
	@rm -f man/man5/srec_aomf.5.tmp

man/cat5/srec_ascii_hex.5: man/man1/z_copyright.so man/man5/srec_ascii_hex.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_ascii_hex.5 \
		> $@

$(mandir)/man5/srec_ascii_hex.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_ascii_hex.5
	$(SOELIM) -I. man/man5/srec_ascii_hex.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_ascii_hex.5.tmp
	$(INSTALL_DATA) man/man5/srec_ascii_hex.5.tmp $@
	@rm -f man/man5/srec_ascii_hex.5.tmp

man/cat5/srec_atmel_generic.5: man/man1/z_copyright.so \
		man/man5/srec_atmel_generic.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man5/srec_atmel_generic.5 > $@

$(mandir)/man5/srec_atmel_generic.5: .mkdir.__mandir__man5 \
		man/man1/z_copyright.so man/man5/srec_atmel_generic.5
	$(SOELIM) -I. man/man5/srec_atmel_generic.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_atmel_generic.5.tmp
	$(INSTALL_DATA) man/man5/srec_atmel_generic.5.tmp $@
	@rm -f man/man5/srec_atmel_generic.5.tmp

man/cat5/srec_binary.5: man/man1/z_copyright.so man/man5/srec_binary.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_binary.5 > $@

$(mandir)/man5/srec_binary.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_binary.5
	$(SOELIM) -I. man/man5/srec_binary.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_binary.5.tmp
	$(INSTALL_DATA) man/man5/srec_binary.5.tmp $@
	@rm -f man/man5/srec_binary.5.tmp

man/cat5/srec_brecord.5: man/man1/z_copyright.so man/man5/srec_brecord.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_brecord.5 > \
		$@

$(mandir)/man5/srec_brecord.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_brecord.5
	$(SOELIM) -I. man/man5/srec_brecord.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_brecord.5.tmp
	$(INSTALL_DATA) man/man5/srec_brecord.5.tmp $@
	@rm -f man/man5/srec_brecord.5.tmp

man/cat5/srec_coe.5: man/man1/z_copyright.so man/man5/srec_coe.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_coe.5 > $@

$(mandir)/man5/srec_coe.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_coe.5
	$(SOELIM) -I. man/man5/srec_coe.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_coe.5.tmp
	$(INSTALL_DATA) man/man5/srec_coe.5.tmp $@
	@rm -f man/man5/srec_coe.5.tmp

man/cat5/srec_cosmac.5: man/man1/z_copyright.so man/man5/srec_cosmac.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_cosmac.5 > $@

$(mandir)/man5/srec_cosmac.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_cosmac.5
	$(SOELIM) -I. man/man5/srec_cosmac.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_cosmac.5.tmp
	$(INSTALL_DATA) man/man5/srec_cosmac.5.tmp $@
	@rm -f man/man5/srec_cosmac.5.tmp

man/cat5/srec_dec_binary.5: man/man1/z_copyright.so man/man5/srec_dec_binary.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man5/srec_dec_binary.5 > $@

$(mandir)/man5/srec_dec_binary.5: .mkdir.__mandir__man5 \
		man/man1/z_copyright.so man/man5/srec_dec_binary.5
	$(SOELIM) -I. man/man5/srec_dec_binary.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_dec_binary.5.tmp
	$(INSTALL_DATA) man/man5/srec_dec_binary.5.tmp $@
	@rm -f man/man5/srec_dec_binary.5.tmp

man/cat5/srec_emon52.5: man/man5/srec_emon52.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_emon52.5 > $@

$(mandir)/man5/srec_emon52.5: .mkdir.__mandir__man5 man/man5/srec_emon52.5
	sed '/^[.]XX ./d' < man/man5/srec_emon52.5 > man/man5/srec_emon52.5.tmp
	$(INSTALL_DATA) man/man5/srec_emon52.5.tmp $@
	@rm -f man/man5/srec_emon52.5.tmp

man/cat5/srec_fairchild.5: man/man1/z_copyright.so man/man5/srec_fairchild.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_fairchild.5 \
		> $@

$(mandir)/man5/srec_fairchild.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_fairchild.5
	$(SOELIM) -I. man/man5/srec_fairchild.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_fairchild.5.tmp
	$(INSTALL_DATA) man/man5/srec_fairchild.5.tmp $@
	@rm -f man/man5/srec_fairchild.5.tmp

man/cat5/srec_fastload.5: man/man1/z_copyright.so man/man5/srec_fastload.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_fastload.5 \
		> $@

$(mandir)/man5/srec_fastload.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_fastload.5
	$(SOELIM) -I. man/man5/srec_fastload.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_fastload.5.tmp
	$(INSTALL_DATA) man/man5/srec_fastload.5.tmp $@
	@rm -f man/man5/srec_fastload.5.tmp

man/cat5/srec_formatted_binary.5: man/man1/z_copyright.so \
		man/man5/srec_formatted_binary.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man5/srec_formatted_binary.5 > $@

$(mandir)/man5/srec_formatted_binary.5: .mkdir.__mandir__man5 \
		man/man1/z_copyright.so man/man5/srec_formatted_binary.5
	$(SOELIM) -I. man/man5/srec_formatted_binary.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_formatted_binary.5.tmp
	$(INSTALL_DATA) man/man5/srec_formatted_binary.5.tmp $@
	@rm -f man/man5/srec_formatted_binary.5.tmp

man/cat5/srec_forth.5: man/man1/z_copyright.so man/man5/srec_forth.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_forth.5 > $@

$(mandir)/man5/srec_forth.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_forth.5
	$(SOELIM) -I. man/man5/srec_forth.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_forth.5.tmp
	$(INSTALL_DATA) man/man5/srec_forth.5.tmp $@
	@rm -f man/man5/srec_forth.5.tmp

man/cat5/srec_fpc.5: man/man5/srec_fpc.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_fpc.5 > $@

$(mandir)/man5/srec_fpc.5: .mkdir.__mandir__man5 man/man5/srec_fpc.5
	sed '/^[.]XX ./d' < man/man5/srec_fpc.5 > man/man5/srec_fpc.5.tmp
	$(INSTALL_DATA) man/man5/srec_fpc.5.tmp $@
	@rm -f man/man5/srec_fpc.5.tmp

man/cat5/srec_idt.5: man/man1/z_copyright.so man/man5/srec_idt.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_idt.5 > $@

$(mandir)/man5/srec_idt.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_idt.5
	$(SOELIM) -I. man/man5/srec_idt.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_idt.5.tmp
	$(INSTALL_DATA) man/man5/srec_idt.5.tmp $@
	@rm -f man/man5/srec_idt.5.tmp

man/cat5/srec_intel.5: man/man1/z_copyright.so man/man5/srec_intel.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_intel.5 > $@

$(mandir)/man5/srec_intel.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_intel.5
	$(SOELIM) -I. man/man5/srec_intel.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_intel.5.tmp
	$(INSTALL_DATA) man/man5/srec_intel.5.tmp $@
	@rm -f man/man5/srec_intel.5.tmp

man/cat5/srec_intel16.5: man/man1/z_copyright.so man/man5/srec_intel16.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_intel16.5 > \
		$@

$(mandir)/man5/srec_intel16.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_intel16.5
	$(SOELIM) -I. man/man5/srec_intel16.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_intel16.5.tmp
	$(INSTALL_DATA) man/man5/srec_intel16.5.tmp $@
	@rm -f man/man5/srec_intel16.5.tmp

man/cat5/srec_logisim.5: man/man1/z_copyright.so man/man5/srec_logisim.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_logisim.5 > \
		$@

$(mandir)/man5/srec_logisim.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_logisim.5
	$(SOELIM) -I. man/man5/srec_logisim.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_logisim.5.tmp
	$(INSTALL_DATA) man/man5/srec_logisim.5.tmp $@
	@rm -f man/man5/srec_logisim.5.tmp

man/cat5/srec_mem.5: man/man1/z_copyright.so man/man5/srec_mem.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_mem.5 > $@

$(mandir)/man5/srec_mem.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_mem.5
	$(SOELIM) -I. man/man5/srec_mem.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_mem.5.tmp
	$(INSTALL_DATA) man/man5/srec_mem.5.tmp $@
	@rm -f man/man5/srec_mem.5.tmp

man/cat5/srec_mif.5: man/man1/z_copyright.so man/man5/srec_mif.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_mif.5 > $@

$(mandir)/man5/srec_mif.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_mif.5
	$(SOELIM) -I. man/man5/srec_mif.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_mif.5.tmp
	$(INSTALL_DATA) man/man5/srec_mif.5.tmp $@
	@rm -f man/man5/srec_mif.5.tmp

man/cat5/srec_mips_flash.5: man/man1/z_copyright.so man/man5/srec_mips_flash.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man5/srec_mips_flash.5 > $@

$(mandir)/man5/srec_mips_flash.5: .mkdir.__mandir__man5 \
		man/man1/z_copyright.so man/man5/srec_mips_flash.5
	$(SOELIM) -I. man/man5/srec_mips_flash.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_mips_flash.5.tmp
	$(INSTALL_DATA) man/man5/srec_mips_flash.5.tmp $@
	@rm -f man/man5/srec_mips_flash.5.tmp

man/cat5/srec_mos_tech.5: man/man1/z_copyright.so man/man5/srec_mos_tech.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_mos_tech.5 \
		> $@

$(mandir)/man5/srec_mos_tech.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_mos_tech.5
	$(SOELIM) -I. man/man5/srec_mos_tech.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_mos_tech.5.tmp
	$(INSTALL_DATA) man/man5/srec_mos_tech.5.tmp $@
	@rm -f man/man5/srec_mos_tech.5.tmp

man/cat5/srec_motorola.5: man/man1/z_copyright.so man/man5/srec_motorola.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_motorola.5 \
		> $@

$(mandir)/man5/srec_motorola.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_motorola.5
	$(SOELIM) -I. man/man5/srec_motorola.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_motorola.5.tmp
	$(INSTALL_DATA) man/man5/srec_motorola.5.tmp $@
	@rm -f man/man5/srec_motorola.5.tmp

man/cat5/srec_msbin.5: man/man1/z_copyright.so man/man5/srec_msbin.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_msbin.5 > $@

$(mandir)/man5/srec_msbin.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_msbin.5
	$(SOELIM) -I. man/man5/srec_msbin.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_msbin.5.tmp
	$(INSTALL_DATA) man/man5/srec_msbin.5.tmp $@
	@rm -f man/man5/srec_msbin.5.tmp

man/cat5/srec_needham.5: man/man1/z_copyright.so man/man5/srec_needham.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_needham.5 > \
		$@

$(mandir)/man5/srec_needham.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_needham.5
	$(SOELIM) -I. man/man5/srec_needham.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_needham.5.tmp
	$(INSTALL_DATA) man/man5/srec_needham.5.tmp $@
	@rm -f man/man5/srec_needham.5.tmp

man/cat5/srec_os65v.5: man/man1/z_copyright.so man/man5/srec_os65v.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_os65v.5 > $@

$(mandir)/man5/srec_os65v.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_os65v.5
	$(SOELIM) -I. man/man5/srec_os65v.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_os65v.5.tmp
	$(INSTALL_DATA) man/man5/srec_os65v.5.tmp $@
	@rm -f man/man5/srec_os65v.5.tmp

man/cat5/srec_ppb.5: man/man1/z_copyright.so man/man5/srec_ppb.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_ppb.5 > $@

$(mandir)/man5/srec_ppb.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_ppb.5
	$(SOELIM) -I. man/man5/srec_ppb.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_ppb.5.tmp
	$(INSTALL_DATA) man/man5/srec_ppb.5.tmp $@
	@rm -f man/man5/srec_ppb.5.tmp

man/cat5/srec_ppx.5: man/man1/z_copyright.so man/man5/srec_ppx.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_ppx.5 > $@

$(mandir)/man5/srec_ppx.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_ppx.5
	$(SOELIM) -I. man/man5/srec_ppx.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_ppx.5.tmp
	$(INSTALL_DATA) man/man5/srec_ppx.5.tmp $@
	@rm -f man/man5/srec_ppx.5.tmp

man/cat5/srec_signetics.5: man/man5/srec_signetics.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_signetics.5 \
		> $@

$(mandir)/man5/srec_signetics.5: .mkdir.__mandir__man5 man/man5/srec_signetics.5
	sed '/^[.]XX ./d' < man/man5/srec_signetics.5 > \
		man/man5/srec_signetics.5.tmp
	$(INSTALL_DATA) man/man5/srec_signetics.5.tmp $@
	@rm -f man/man5/srec_signetics.5.tmp

man/cat5/srec_spasm.5: man/man1/z_copyright.so man/man5/srec_spasm.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_spasm.5 > $@

$(mandir)/man5/srec_spasm.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_spasm.5
	$(SOELIM) -I. man/man5/srec_spasm.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_spasm.5.tmp
	$(INSTALL_DATA) man/man5/srec_spasm.5.tmp $@
	@rm -f man/man5/srec_spasm.5.tmp

man/cat5/srec_spectrum.5: man/man1/z_copyright.so man/man5/srec_spectrum.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_spectrum.5 \
		> $@

$(mandir)/man5/srec_spectrum.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_spectrum.5
	$(SOELIM) -I. man/man5/srec_spectrum.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_spectrum.5.tmp
	$(INSTALL_DATA) man/man5/srec_spectrum.5.tmp $@
	@rm -f man/man5/srec_spectrum.5.tmp

man/cat5/srec_stewie.5: man/man1/z_copyright.so man/man5/srec_stewie.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_stewie.5 > $@

$(mandir)/man5/srec_stewie.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_stewie.5
	$(SOELIM) -I. man/man5/srec_stewie.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_stewie.5.tmp
	$(INSTALL_DATA) man/man5/srec_stewie.5.tmp $@
	@rm -f man/man5/srec_stewie.5.tmp

man/cat5/srec_tektronix.5: man/man1/z_copyright.so man/man5/srec_tektronix.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_tektronix.5 \
		> $@

$(mandir)/man5/srec_tektronix.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_tektronix.5
	$(SOELIM) -I. man/man5/srec_tektronix.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_tektronix.5.tmp
	$(INSTALL_DATA) man/man5/srec_tektronix.5.tmp $@
	@rm -f man/man5/srec_tektronix.5.tmp

man/cat5/srec_tektronix_extended.5: man/man1/z_copyright.so \
		man/man5/srec_tektronix_extended.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man5/srec_tektronix_extended.5 > $@

$(mandir)/man5/srec_tektronix_extended.5: .mkdir.__mandir__man5 \
		man/man1/z_copyright.so man/man5/srec_tektronix_extended.5
	$(SOELIM) -I. man/man5/srec_tektronix_extended.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_tektronix_extended.5.tmp
	$(INSTALL_DATA) man/man5/srec_tektronix_extended.5.tmp $@
	@rm -f man/man5/srec_tektronix_extended.5.tmp

man/cat5/srec_ti_tagged.5: man/man1/z_copyright.so man/man5/srec_ti_tagged.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_ti_tagged.5 \
		> $@

$(mandir)/man5/srec_ti_tagged.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_ti_tagged.5
	$(SOELIM) -I. man/man5/srec_ti_tagged.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_ti_tagged.5.tmp
	$(INSTALL_DATA) man/man5/srec_ti_tagged.5.tmp $@
	@rm -f man/man5/srec_ti_tagged.5.tmp

man/cat5/srec_ti_tagged_16.5: man/man1/z_copyright.so \
		man/man5/srec_ti_tagged_16.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man \
		man/man5/srec_ti_tagged_16.5 > $@

$(mandir)/man5/srec_ti_tagged_16.5: .mkdir.__mandir__man5 \
		man/man1/z_copyright.so man/man5/srec_ti_tagged_16.5
	$(SOELIM) -I. man/man5/srec_ti_tagged_16.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_ti_tagged_16.5.tmp
	$(INSTALL_DATA) man/man5/srec_ti_tagged_16.5.tmp $@
	@rm -f man/man5/srec_ti_tagged_16.5.tmp

man/cat5/srec_ti_txt.5: man/man1/z_copyright.so man/man5/srec_ti_txt.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_ti_txt.5 > $@

$(mandir)/man5/srec_ti_txt.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_ti_txt.5
	$(SOELIM) -I. man/man5/srec_ti_txt.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_ti_txt.5.tmp
	$(INSTALL_DATA) man/man5/srec_ti_txt.5.tmp $@
	@rm -f man/man5/srec_ti_txt.5.tmp

man/cat5/srec_trs80.5: man/man1/z_copyright.so man/man5/srec_trs80.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_trs80.5 > $@

$(mandir)/man5/srec_trs80.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_trs80.5
	$(SOELIM) -I. man/man5/srec_trs80.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_trs80.5.tmp
	$(INSTALL_DATA) man/man5/srec_trs80.5.tmp $@
	@rm -f man/man5/srec_trs80.5.tmp

man/cat5/srec_vmem.5: man/man1/z_copyright.so man/man5/srec_vmem.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_vmem.5 > $@

$(mandir)/man5/srec_vmem.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_vmem.5
	$(SOELIM) -I. man/man5/srec_vmem.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_vmem.5.tmp
	$(INSTALL_DATA) man/man5/srec_vmem.5.tmp $@
	@rm -f man/man5/srec_vmem.5.tmp

man/cat5/srec_wilson.5: man/man1/z_copyright.so man/man5/srec_wilson.5
	@mkdir -p man/cat5
	GROFF_NO_SGR=-c $(GROFF) -I. -Tascii -t -man man/man5/srec_wilson.5 > $@

$(mandir)/man5/srec_wilson.5: .mkdir.__mandir__man5 man/man1/z_copyright.so \
		man/man5/srec_wilson.5
	$(SOELIM) -I. man/man5/srec_wilson.5 | sed '/^[.]XX ./d' > \
		man/man5/srec_wilson.5.tmp
	$(INSTALL_DATA) man/man5/srec_wilson.5.tmp $@
	@rm -f man/man5/srec_wilson.5.tmp

script/test_prelude.sh: config.status script/test_prelude.sh.in
	CONFIG_FILES=$@:script/test_prelude.sh.in CONFIG_HEADERS= $(SH) \
		config.status

bin/test_prelude: .bin script/test_prelude.sh
	cp script/test_prelude.sh $@
	chmod a+rx $@

srec_cat/arglex3.lo srec_cat/arglex3.o: srec_cat/arglex3.cc srec_cat/arglex3.h \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srec_cat/arglex3.cc -o srec_cat/arglex3.lo

srec_cat/main.lo srec_cat/main.o: srec_cat/arglex3.h srec_cat/main.cc \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/catenate.h srecord/input/file.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/writer.h srecord/output.h \
		srecord/output/file.h srecord/output/filter.h \
		srecord/output/filter/reblock.h srecord/record.h \
		srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srec_cat/main.cc -o srec_cat/main.lo

srec_cmp/main.lo srec_cmp/main.o: srec_cmp/main.cc srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/memory.h srecord/memory/chunk.h \
		srecord/memory/walker.h srecord/output.h srecord/record.h \
		srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srec_cmp/main.cc -o srec_cmp/main.lo

srec_info/main.lo srec_info/main.o: srec_info/main.cc srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/interval.h srecord/memory.h srecord/memory/chunk.h \
		srecord/memory/walker.h srecord/output.h srecord/record.h \
		srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srec_info/main.cc -o srec_info/main.lo

srecord/adler16.lo srecord/adler16.o: srecord/adler16.cc srecord/adler16.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/adler16.cc -o srecord/adler16.lo

$(includedir)/srecord/adler16.h: .mkdir.__includedir__srecord srecord/adler16.h
	$(INSTALL_DATA) srecord/adler16.h $@

srecord/adler32.lo srecord/adler32.o: srecord/adler32.cc srecord/adler32.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/adler32.cc -o srecord/adler32.lo

$(includedir)/srecord/adler32.h: .mkdir.__includedir__srecord srecord/adler32.h
	$(INSTALL_DATA) srecord/adler32.h $@

srecord/arglex.lo srecord/arglex.o: srecord/arglex.cc srecord/arglex.h \
		srecord/format_printf.h srecord/progname.h srecord/quit.h \
		srecord/versn_stamp.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex.cc -o srecord/arglex.lo

srecord/arglex/abbreviate.lo srecord/arglex/abbreviate.o: srecord/arglex.h \
		srecord/arglex/abbreviate.cc srecord/format_printf.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/abbreviate.cc -o srecord/arglex/abbreviate.lo

srecord/arglex/test_ambiguous.lo srecord/arglex/test_ambiguous.o: \
		srecord/arglex.h srecord/arglex/test_ambiguous.cc \
		srecord/format_printf.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/test_ambiguous.cc -o \
		srecord/arglex/test_ambiguous.lo

srecord/arglex/tool.lo srecord/arglex/tool.o: srecord/arglex.h \
		srecord/arglex/tool.cc srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool.cc -o srecord/arglex/tool.lo

srecord/arglex/tool/get_interval.lo srecord/arglex/tool/get_interval.o: \
		srecord/arglex.h srecord/arglex/tool.h \
		srecord/arglex/tool/get_interval.cc srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/interval.h srecord/interval.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool/get_interval.cc -o \
		srecord/arglex/tool/get_interval.lo

srecord/arglex/tool/get_interval_small.lo \
		srecord/arglex/tool/get_interval_small.o: srecord/arglex.h \
		srecord/arglex/tool.h \
		srecord/arglex/tool/get_interval_small.cc srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/interval.h srecord/output.h srecord/pretty_size.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool/get_interval_small.cc -o \
		srecord/arglex/tool/get_interval_small.lo

srecord/arglex/tool/get_number.lo srecord/arglex/tool/get_number.o: \
		srecord/arglex.h srecord/arglex/tool.h \
		srecord/arglex/tool/get_number.cc srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/interval.h srecord/interval.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool/get_number.cc -o \
		srecord/arglex/tool/get_number.lo

srecord/arglex/tool/get_string.lo srecord/arglex/tool/get_string.o: \
		srecord/arglex.h srecord/arglex/tool.h \
		srecord/arglex/tool/get_string.cc srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool/get_string.cc -o \
		srecord/arglex/tool/get_string.lo

srecord/arglex/tool/input.lo srecord/arglex/tool/input.o: srecord/adler16.h \
		srecord/adler32.h srecord/arglex.h srecord/arglex/tool.h \
		srecord/arglex/tool/input.cc srecord/crc16.h srecord/crc32.h \
		srecord/defcon.h srecord/endian.h srecord/fletcher16.h \
		srecord/fletcher32.h srecord/format_printf.h srecord/input.h \
		srecord/input/catenate.h srecord/input/file.h \
		srecord/input/file/aomf.h srecord/input/file/ascii_hex.h \
		srecord/input/file/atmel_generic.h srecord/input/file/binary.h \
		srecord/input/file/brecord.h srecord/input/file/cosmac.h \
		srecord/input/file/dec_binary.h srecord/input/file/emon52.h \
		srecord/input/file/fairchild.h srecord/input/file/fastload.h \
		srecord/input/file/formatted_binary.h \
		srecord/input/file/four_packed_code.h \
		srecord/input/file/hexdump.h srecord/input/file/idt.h \
		srecord/input/file/intel.h srecord/input/file/intel16.h \
		srecord/input/file/logisim.h srecord/input/file/mif.h \
		srecord/input/file/mips_flash.h srecord/input/file/mos_tech.h \
		srecord/input/file/motorola.h srecord/input/file/msbin.h \
		srecord/input/file/needham.h srecord/input/file/os65v.h \
		srecord/input/file/ppb.h srecord/input/file/ppx.h \
		srecord/input/file/signetics.h srecord/input/file/spasm.h \
		srecord/input/file/spectrum.h srecord/input/file/stewie.h \
		srecord/input/file/tektronix.h \
		srecord/input/file/tektronix_extended.h \
		srecord/input/file/ti_tagged.h \
		srecord/input/file/ti_tagged_16.h srecord/input/file/ti_txt.h \
		srecord/input/file/trs80.h srecord/input/file/vmem.h \
		srecord/input/file/wilson.h srecord/input/filter.h \
		srecord/input/filter/and.h srecord/input/filter/bitrev.h \
		srecord/input/filter/byte_swap.h \
		srecord/input/filter/checksum.h \
		srecord/input/filter/checksum/bitnot.h \
		srecord/input/filter/checksum/negative.h \
		srecord/input/filter/checksum/positive.h \
		srecord/input/filter/crop.h srecord/input/filter/fill.h \
		srecord/input/filter/interval.h \
		srecord/input/filter/interval/length.h \
		srecord/input/filter/interval/maximum.h \
		srecord/input/filter/interval/minimum.h \
		srecord/input/filter/message.h \
		srecord/input/filter/message/adler16.h \
		srecord/input/filter/message/adler32.h \
		srecord/input/filter/message/crc16.h \
		srecord/input/filter/message/crc32.h \
		srecord/input/filter/message/fletcher16.h \
		srecord/input/filter/message/fletcher32.h \
		srecord/input/filter/message/gcrypt.h \
		srecord/input/filter/message/stm32.h \
		srecord/input/filter/not.h srecord/input/filter/offset.h \
		srecord/input/filter/or.h srecord/input/filter/random_fill.h \
		srecord/input/filter/sequence.h srecord/input/filter/split.h \
		srecord/input/filter/unfill.h srecord/input/filter/unsplit.h \
		srecord/input/filter/xor.h srecord/input/generator.h \
		srecord/input/interval.h srecord/interval.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/output.h srecord/quit.h srecord/record.h \
		srecord/stm32.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool/input.cc -o srecord/arglex/tool/input.lo

srecord/arglex/tool/output.lo srecord/arglex/tool/output.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/arglex/tool/output.cc \
		srecord/defcon.h srecord/endian.h srecord/format_printf.h \
		srecord/input.h srecord/interval.h srecord/output.h \
		srecord/output/file.h srecord/output/file/aomf.h \
		srecord/output/file/ascii_hex.h srecord/output/file/asm.h \
		srecord/output/file/atmel_generic.h \
		srecord/output/file/basic.h srecord/output/file/binary.h \
		srecord/output/file/brecord.h srecord/output/file/c.h \
		srecord/output/file/coe.h srecord/output/file/cosmac.h \
		srecord/output/file/dec_binary.h srecord/output/file/emon52.h \
		srecord/output/file/fairchild.h srecord/output/file/fastload.h \
		srecord/output/file/formatted_binary.h \
		srecord/output/file/forth.h \
		srecord/output/file/four_packed_code.h \
		srecord/output/file/hexdump.h srecord/output/file/idt.h \
		srecord/output/file/intel.h srecord/output/file/intel16.h \
		srecord/output/file/logisim.h srecord/output/file/mem.h \
		srecord/output/file/mif.h srecord/output/file/mips_flash.h \
		srecord/output/file/mos_tech.h srecord/output/file/motorola.h \
		srecord/output/file/msbin.h srecord/output/file/needham.h \
		srecord/output/file/os65v.h srecord/output/file/ppb.h \
		srecord/output/file/ppx.h srecord/output/file/signetics.h \
		srecord/output/file/spasm.h srecord/output/file/spectrum.h \
		srecord/output/file/stewie.h srecord/output/file/tektronix.h \
		srecord/output/file/tektronix_extended.h \
		srecord/output/file/ti_tagged.h \
		srecord/output/file/ti_tagged_16.h \
		srecord/output/file/ti_txt.h srecord/output/file/trs80.h \
		srecord/output/file/vhdl.h srecord/output/file/vmem.h \
		srecord/output/file/wilson.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/arglex/tool/output.cc -o \
		srecord/arglex/tool/output.lo

srecord/bitrev.lo srecord/bitrev.o: srecord/bitrev.cc srecord/bitrev.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/bitrev.cc -o srecord/bitrev.lo

srecord/crc16.lo srecord/crc16.o: srecord/bitrev.h srecord/crc16.cc \
		srecord/crc16.h srecord/format_printf.h srecord/quit.h \
		srecord/sizeof.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/crc16.cc -o srecord/crc16.lo

$(includedir)/srecord/crc16.h: .mkdir.__includedir__srecord srecord/crc16.h
	$(INSTALL_DATA) srecord/crc16.h $@

srecord/crc32.lo srecord/crc32.o: srecord/crc32.cc srecord/crc32.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/crc32.cc -o srecord/crc32.lo

$(includedir)/srecord/crc32.h: .mkdir.__includedir__srecord srecord/crc32.h
	$(INSTALL_DATA) srecord/crc32.h $@

srecord/defcon.lo srecord/defcon.o: srecord/defcon.cc srecord/defcon.h \
		srecord/sizeof.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/defcon.cc -o srecord/defcon.lo

$(includedir)/srecord/defcon.h: .mkdir.__includedir__srecord srecord/defcon.h
	$(INSTALL_DATA) srecord/defcon.h $@

srecord/endian.lo srecord/endian.o: srecord/endian.cc srecord/endian.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/endian.cc -o srecord/endian.lo

$(includedir)/srecord/endian.h: .mkdir.__includedir__srecord srecord/endian.h
	$(INSTALL_DATA) srecord/endian.h $@

srecord/endian/decode_word.lo srecord/endian/decode_word.o: srecord/endian.h \
		srecord/endian/decode_word.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/endian/decode_word.cc -o \
		srecord/endian/decode_word.lo

srecord/fletcher16.lo srecord/fletcher16.o: srecord/endian.h \
		srecord/fletcher16.cc srecord/fletcher16.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/fletcher16.cc -o srecord/fletcher16.lo

$(includedir)/srecord/fletcher16.h: .mkdir.__includedir__srecord \
		srecord/fletcher16.h
	$(INSTALL_DATA) srecord/fletcher16.h $@

srecord/fletcher32.lo srecord/fletcher32.o: srecord/fletcher32.cc \
		srecord/fletcher32.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/fletcher32.cc -o srecord/fletcher32.lo

$(includedir)/srecord/fletcher32.h: .mkdir.__includedir__srecord \
		srecord/fletcher32.h
	$(INSTALL_DATA) srecord/fletcher32.h $@

$(includedir)/srecord/format_printf.h: .mkdir.__includedir__srecord \
		srecord/format_printf.h
	$(INSTALL_DATA) srecord/format_printf.h $@

srecord/input.lo srecord/input.o: srecord/endian.h srecord/format_printf.h \
		srecord/input.cc srecord/input.h srecord/quit.h \
		srecord/quit/prefix.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input.cc -o srecord/input.lo

$(includedir)/srecord/input.h: .mkdir.__includedir__srecord srecord/input.h
	$(INSTALL_DATA) srecord/input.h $@

srecord/input/catenate.lo srecord/input/catenate.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h \
		srecord/input/catenate.cc srecord/input/catenate.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/catenate.cc -o srecord/input/catenate.lo

$(includedir)/srecord/input/catenate.h: .mkdir.__includedir__srecord_input \
		srecord/input/catenate.h
	$(INSTALL_DATA) srecord/input/catenate.h $@

srecord/input/file.lo srecord/input/file.o: srecord/format_printf.h \
		srecord/input.h srecord/input/file.cc srecord/input/file.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file.cc -o srecord/input/file.lo

$(includedir)/srecord/input/file.h: .mkdir.__includedir__srecord_input \
		srecord/input/file.h
	$(INSTALL_DATA) srecord/input/file.h $@

srecord/input/file/aomf.lo srecord/input/file/aomf.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/aomf.cc srecord/input/file/aomf.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/aomf.cc -o srecord/input/file/aomf.lo

$(includedir)/srecord/input/file/aomf.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/aomf.h
	$(INSTALL_DATA) srecord/input/file/aomf.h $@

srecord/input/file/ascii_hex.lo srecord/input/file/ascii_hex.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/ascii_hex.cc \
		srecord/input/file/ascii_hex.h srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/ascii_hex.cc -o \
		srecord/input/file/ascii_hex.lo

$(includedir)/srecord/input/file/ascii_hex.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/ascii_hex.h
	$(INSTALL_DATA) srecord/input/file/ascii_hex.h $@

srecord/input/file/atmel_generic.lo srecord/input/file/atmel_generic.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/atmel_generic.cc \
		srecord/input/file/atmel_generic.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/atmel_generic.cc -o \
		srecord/input/file/atmel_generic.lo

$(includedir)/srecord/input/file/atmel_generic.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/atmel_generic.h
	$(INSTALL_DATA) srecord/input/file/atmel_generic.h $@

srecord/input/file/binary.lo srecord/input/file/binary.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/binary.cc srecord/input/file/binary.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/binary.cc -o srecord/input/file/binary.lo

$(includedir)/srecord/input/file/binary.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/binary.h
	$(INSTALL_DATA) srecord/input/file/binary.h $@

srecord/input/file/brecord.lo srecord/input/file/brecord.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/brecord.cc srecord/input/file/brecord.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/brecord.cc -o \
		srecord/input/file/brecord.lo

$(includedir)/srecord/input/file/brecord.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/brecord.h
	$(INSTALL_DATA) srecord/input/file/brecord.h $@

srecord/input/file/cosmac.lo srecord/input/file/cosmac.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/cosmac.cc srecord/input/file/cosmac.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/cosmac.cc -o srecord/input/file/cosmac.lo

$(includedir)/srecord/input/file/cosmac.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/cosmac.h
	$(INSTALL_DATA) srecord/input/file/cosmac.h $@

srecord/input/file/dec_binary.lo srecord/input/file/dec_binary.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/dec_binary.cc \
		srecord/input/file/dec_binary.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/dec_binary.cc -o \
		srecord/input/file/dec_binary.lo

$(includedir)/srecord/input/file/dec_binary.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/dec_binary.h
	$(INSTALL_DATA) srecord/input/file/dec_binary.h $@

srecord/input/file/emon52.lo srecord/input/file/emon52.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/emon52.cc srecord/input/file/emon52.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/emon52.cc -o srecord/input/file/emon52.lo

$(includedir)/srecord/input/file/emon52.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/emon52.h
	$(INSTALL_DATA) srecord/input/file/emon52.h $@

srecord/input/file/fairchild.lo srecord/input/file/fairchild.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/fairchild.cc \
		srecord/input/file/fairchild.h srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/fairchild.cc -o \
		srecord/input/file/fairchild.lo

$(includedir)/srecord/input/file/fairchild.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/fairchild.h
	$(INSTALL_DATA) srecord/input/file/fairchild.h $@

srecord/input/file/fastload.lo srecord/input/file/fastload.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/fastload.cc srecord/input/file/fastload.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/fastload.cc -o \
		srecord/input/file/fastload.lo

$(includedir)/srecord/input/file/fastload.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/fastload.h
	$(INSTALL_DATA) srecord/input/file/fastload.h $@

srecord/input/file/formatted_binary.lo srecord/input/file/formatted_binary.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/formatted_binary.cc \
		srecord/input/file/formatted_binary.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/formatted_binary.cc -o \
		srecord/input/file/formatted_binary.lo

$(includedir)/srecord/input/file/formatted_binary.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/formatted_binary.h
	$(INSTALL_DATA) srecord/input/file/formatted_binary.h $@

srecord/input/file/four_packed_code.lo srecord/input/file/four_packed_code.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/four_packed_code.cc \
		srecord/input/file/four_packed_code.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/four_packed_code.cc -o \
		srecord/input/file/four_packed_code.lo

$(includedir)/srecord/input/file/four_packed_code.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/four_packed_code.h
	$(INSTALL_DATA) srecord/input/file/four_packed_code.h $@

srecord/input/file/guess.lo srecord/input/file/guess.o: srecord/arglex.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/aomf.h \
		srecord/input/file/ascii_hex.h \
		srecord/input/file/atmel_generic.h srecord/input/file/binary.h \
		srecord/input/file/brecord.h srecord/input/file/dec_binary.h \
		srecord/input/file/emon52.h srecord/input/file/fairchild.h \
		srecord/input/file/fastload.h \
		srecord/input/file/formatted_binary.h \
		srecord/input/file/four_packed_code.h \
		srecord/input/file/guess.cc srecord/input/file/hexdump.h \
		srecord/input/file/idt.h srecord/input/file/intel.h \
		srecord/input/file/intel16.h srecord/input/file/logisim.h \
		srecord/input/file/mif.h srecord/input/file/mips_flash.h \
		srecord/input/file/mos_tech.h srecord/input/file/motorola.h \
		srecord/input/file/msbin.h srecord/input/file/needham.h \
		srecord/input/file/os65v.h srecord/input/file/ppb.h \
		srecord/input/file/ppx.h srecord/input/file/signetics.h \
		srecord/input/file/spasm.h srecord/input/file/spectrum.h \
		srecord/input/file/stewie.h srecord/input/file/tektronix.h \
		srecord/input/file/tektronix_extended.h \
		srecord/input/file/ti_tagged.h srecord/input/file/ti_txt.h \
		srecord/input/file/trs80.h srecord/input/file/vmem.h \
		srecord/input/file/wilson.h srecord/quit.h \
		srecord/quit/exception.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/guess.cc -o srecord/input/file/guess.lo

srecord/input/file/hexdump.lo srecord/input/file/hexdump.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/hexdump.cc srecord/input/file/hexdump.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/hexdump.cc -o \
		srecord/input/file/hexdump.lo

srecord/input/file/idt.lo srecord/input/file/idt.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/idt.cc srecord/input/file/idt.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/idt.cc -o srecord/input/file/idt.lo

srecord/input/file/intel.lo srecord/input/file/intel.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/intel.cc srecord/input/file/intel.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/intel.cc -o srecord/input/file/intel.lo

$(includedir)/srecord/input/file/intel.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/intel.h
	$(INSTALL_DATA) srecord/input/file/intel.h $@

srecord/input/file/intel16.lo srecord/input/file/intel16.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/intel16.cc srecord/input/file/intel16.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/intel16.cc -o \
		srecord/input/file/intel16.lo

srecord/input/file/logisim.lo srecord/input/file/logisim.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/logisim.cc srecord/input/file/logisim.h \
		srecord/output.h srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/logisim.cc -o \
		srecord/input/file/logisim.lo

$(includedir)/srecord/input/file/logisim.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/logisim.h
	$(INSTALL_DATA) srecord/input/file/logisim.h $@

srecord/input/file/mif.lo srecord/input/file/mif.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/mif.cc srecord/input/file/mif.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/mif.cc -o srecord/input/file/mif.lo

$(includedir)/srecord/input/file/mif.h: \
		.mkdir.__includedir__srecord_input_file srecord/input/file/mif.h
	$(INSTALL_DATA) srecord/input/file/mif.h $@

srecord/input/file/mips_flash.lo srecord/input/file/mips_flash.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/mips_flash.cc \
		srecord/input/file/mips_flash.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/mips_flash.cc -o \
		srecord/input/file/mips_flash.lo

$(includedir)/srecord/input/file/mips_flash.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/mips_flash.h
	$(INSTALL_DATA) srecord/input/file/mips_flash.h $@

srecord/input/file/mos_tech.lo srecord/input/file/mos_tech.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/mos_tech.cc srecord/input/file/mos_tech.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/mos_tech.cc -o \
		srecord/input/file/mos_tech.lo

$(includedir)/srecord/input/file/mos_tech.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/mos_tech.h
	$(INSTALL_DATA) srecord/input/file/mos_tech.h $@

srecord/input/file/motorola.lo srecord/input/file/motorola.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/motorola.cc srecord/input/file/motorola.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/motorola.cc -o \
		srecord/input/file/motorola.lo

srecord/input/file/msbin.lo srecord/input/file/msbin.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/msbin.cc srecord/input/file/msbin.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/msbin.cc -o srecord/input/file/msbin.lo

$(includedir)/srecord/input/file/msbin.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/msbin.h
	$(INSTALL_DATA) srecord/input/file/msbin.h $@

srecord/input/file/needham.lo srecord/input/file/needham.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/needham.cc srecord/input/file/needham.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/needham.cc -o \
		srecord/input/file/needham.lo

$(includedir)/srecord/input/file/needham.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/needham.h
	$(INSTALL_DATA) srecord/input/file/needham.h $@

srecord/input/file/os65v.lo srecord/input/file/os65v.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/os65v.cc srecord/input/file/os65v.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/os65v.cc -o srecord/input/file/os65v.lo

$(includedir)/srecord/input/file/os65v.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/os65v.h
	$(INSTALL_DATA) srecord/input/file/os65v.h $@

srecord/input/file/ppb.lo srecord/input/file/ppb.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/ppb.cc srecord/input/file/ppb.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/ppb.cc -o srecord/input/file/ppb.lo

$(includedir)/srecord/input/file/ppb.h: \
		.mkdir.__includedir__srecord_input_file srecord/input/file/ppb.h
	$(INSTALL_DATA) srecord/input/file/ppb.h $@

srecord/input/file/ppx.lo srecord/input/file/ppx.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/ppx.cc srecord/input/file/ppx.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/ppx.cc -o srecord/input/file/ppx.lo

$(includedir)/srecord/input/file/ppx.h: \
		.mkdir.__includedir__srecord_input_file srecord/input/file/ppx.h
	$(INSTALL_DATA) srecord/input/file/ppx.h $@

srecord/input/file/signetics.lo srecord/input/file/signetics.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/signetics.cc \
		srecord/input/file/signetics.h srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/signetics.cc -o \
		srecord/input/file/signetics.lo

$(includedir)/srecord/input/file/signetics.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/signetics.h
	$(INSTALL_DATA) srecord/input/file/signetics.h $@

srecord/input/file/spasm.lo srecord/input/file/spasm.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/spasm.cc srecord/input/file/spasm.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/spasm.cc -o srecord/input/file/spasm.lo

$(includedir)/srecord/input/file/spasm.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/spasm.h
	$(INSTALL_DATA) srecord/input/file/spasm.h $@

srecord/input/file/spectrum.lo srecord/input/file/spectrum.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/spectrum.cc srecord/input/file/spectrum.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/spectrum.cc -o \
		srecord/input/file/spectrum.lo

$(includedir)/srecord/input/file/spectrum.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/spectrum.h
	$(INSTALL_DATA) srecord/input/file/spectrum.h $@

srecord/input/file/stewie.lo srecord/input/file/stewie.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/stewie.cc srecord/input/file/stewie.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/stewie.cc -o srecord/input/file/stewie.lo

$(includedir)/srecord/input/file/stewie.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/stewie.h
	$(INSTALL_DATA) srecord/input/file/stewie.h $@

srecord/input/file/tektronix.lo srecord/input/file/tektronix.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/tektronix.cc \
		srecord/input/file/tektronix.h srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/tektronix.cc -o \
		srecord/input/file/tektronix.lo

$(includedir)/srecord/input/file/tektronix.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/tektronix.h
	$(INSTALL_DATA) srecord/input/file/tektronix.h $@

srecord/input/file/tektronix_extended.lo \
		srecord/input/file/tektronix_extended.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/tektronix_extended.cc \
		srecord/input/file/tektronix_extended.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/tektronix_extended.cc -o \
		srecord/input/file/tektronix_extended.lo

$(includedir)/srecord/input/file/tektronix_extended.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/tektronix_extended.h
	$(INSTALL_DATA) srecord/input/file/tektronix_extended.h $@

srecord/input/file/ti_tagged.lo srecord/input/file/ti_tagged.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/ti_tagged.cc \
		srecord/input/file/ti_tagged.h srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/ti_tagged.cc -o \
		srecord/input/file/ti_tagged.lo

$(includedir)/srecord/input/file/ti_tagged.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/ti_tagged.h
	$(INSTALL_DATA) srecord/input/file/ti_tagged.h $@

srecord/input/file/ti_tagged_16.lo srecord/input/file/ti_tagged_16.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/file.h srecord/input/file/ti_tagged_16.cc \
		srecord/input/file/ti_tagged_16.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/ti_tagged_16.cc -o \
		srecord/input/file/ti_tagged_16.lo

$(includedir)/srecord/input/file/ti_tagged_16.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/ti_tagged_16.h
	$(INSTALL_DATA) srecord/input/file/ti_tagged_16.h $@

srecord/input/file/ti_txt.lo srecord/input/file/ti_txt.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/ti_txt.cc srecord/input/file/ti_txt.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/ti_txt.cc -o srecord/input/file/ti_txt.lo

$(includedir)/srecord/input/file/ti_txt.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/ti_txt.h
	$(INSTALL_DATA) srecord/input/file/ti_txt.h $@

srecord/input/file/trs80.lo srecord/input/file/trs80.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/trs80.cc srecord/input/file/trs80.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/trs80.cc -o srecord/input/file/trs80.lo

$(includedir)/srecord/input/file/trs80.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/trs80.h
	$(INSTALL_DATA) srecord/input/file/trs80.h $@

srecord/input/file/vmem.lo srecord/input/file/vmem.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/vmem.cc srecord/input/file/vmem.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/vmem.cc -o srecord/input/file/vmem.lo

$(includedir)/srecord/input/file/vmem.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/vmem.h
	$(INSTALL_DATA) srecord/input/file/vmem.h $@

srecord/input/file/wilson.lo srecord/input/file/wilson.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/file.h \
		srecord/input/file/wilson.cc srecord/input/file/wilson.h \
		srecord/output.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/file/wilson.cc -o srecord/input/file/wilson.lo

$(includedir)/srecord/input/file/wilson.h: \
		.mkdir.__includedir__srecord_input_file \
		srecord/input/file/wilson.h
	$(INSTALL_DATA) srecord/input/file/wilson.h $@

srecord/input/filter.lo srecord/input/filter.o: srecord/format_printf.h \
		srecord/input.h srecord/input/filter.cc srecord/input/filter.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter.cc -o srecord/input/filter.lo

$(includedir)/srecord/input/filter.h: .mkdir.__includedir__srecord_input \
		srecord/input/filter.h
	$(INSTALL_DATA) srecord/input/filter.h $@

srecord/input/filter/and.lo srecord/input/filter/and.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/and.cc srecord/input/filter/and.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/and.cc -o srecord/input/filter/and.lo

$(includedir)/srecord/input/filter/and.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/and.h
	$(INSTALL_DATA) srecord/input/filter/and.h $@

srecord/input/filter/bitrev.lo srecord/input/filter/bitrev.o: srecord/bitrev.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/bitrev.cc \
		srecord/input/filter/bitrev.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/bitrev.cc -o \
		srecord/input/filter/bitrev.lo

$(includedir)/srecord/input/filter/bitrev.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/bitrev.h
	$(INSTALL_DATA) srecord/input/filter/bitrev.h $@

srecord/input/filter/byte_swap.lo srecord/input/filter/byte_swap.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/byte_swap.cc \
		srecord/input/filter/byte_swap.h srecord/output.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/byte_swap.cc -o \
		srecord/input/filter/byte_swap.lo

$(includedir)/srecord/input/filter/byte_swap.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/byte_swap.h
	$(INSTALL_DATA) srecord/input/filter/byte_swap.h $@

srecord/input/filter/checksum.lo srecord/input/filter/checksum.o: \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/checksum.cc \
		srecord/input/filter/checksum.h srecord/interval.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/checksum.cc -o \
		srecord/input/filter/checksum.lo

$(includedir)/srecord/input/filter/checksum.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/checksum.h
	$(INSTALL_DATA) srecord/input/filter/checksum.h $@

srecord/input/filter/checksum/bitnot.lo \
		srecord/input/filter/checksum/bitnot.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/checksum.h \
		srecord/input/filter/checksum/bitnot.cc \
		srecord/input/filter/checksum/bitnot.h srecord/interval.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/checksum/bitnot.cc -o \
		srecord/input/filter/checksum/bitnot.lo

$(includedir)/srecord/input/filter/checksum/bitnot.h: \
		.mkdir.__includedir__srecord_input_filter_checksum \
		srecord/input/filter/checksum/bitnot.h
	$(INSTALL_DATA) srecord/input/filter/checksum/bitnot.h $@

srecord/input/filter/checksum/negative.lo \
		srecord/input/filter/checksum/negative.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/checksum.h \
		srecord/input/filter/checksum/negative.cc \
		srecord/input/filter/checksum/negative.h srecord/interval.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/checksum/negative.cc -o \
		srecord/input/filter/checksum/negative.lo

$(includedir)/srecord/input/filter/checksum/negative.h: \
		.mkdir.__includedir__srecord_input_filter_checksum \
		srecord/input/filter/checksum/negative.h
	$(INSTALL_DATA) srecord/input/filter/checksum/negative.h $@

srecord/input/filter/checksum/positive.lo \
		srecord/input/filter/checksum/positive.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/checksum.h \
		srecord/input/filter/checksum/positive.cc \
		srecord/input/filter/checksum/positive.h srecord/interval.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/checksum/positive.cc -o \
		srecord/input/filter/checksum/positive.lo

$(includedir)/srecord/input/filter/checksum/positive.h: \
		.mkdir.__includedir__srecord_input_filter_checksum \
		srecord/input/filter/checksum/positive.h
	$(INSTALL_DATA) srecord/input/filter/checksum/positive.h $@

srecord/input/filter/crop.lo srecord/input/filter/crop.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/crop.cc srecord/input/filter/crop.h \
		srecord/interval.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/crop.cc -o srecord/input/filter/crop.lo

$(includedir)/srecord/input/filter/crop.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/crop.h
	$(INSTALL_DATA) srecord/input/filter/crop.h $@

srecord/input/filter/fill.lo srecord/input/filter/fill.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/fill.cc srecord/input/filter/fill.h \
		srecord/interval.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/fill.cc -o srecord/input/filter/fill.lo

$(includedir)/srecord/input/filter/fill.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/fill.h
	$(INSTALL_DATA) srecord/input/filter/fill.h $@

srecord/input/filter/interval.lo srecord/input/filter/interval.o: \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/interval.cc \
		srecord/input/filter/interval.h srecord/interval.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/interval.cc -o \
		srecord/input/filter/interval.lo

$(includedir)/srecord/input/filter/interval.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/interval.h
	$(INSTALL_DATA) srecord/input/filter/interval.h $@

srecord/input/filter/interval/length.lo \
		srecord/input/filter/interval/length.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/interval.h \
		srecord/input/filter/interval/length.cc \
		srecord/input/filter/interval/length.h srecord/interval.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/interval/length.cc -o \
		srecord/input/filter/interval/length.lo

$(includedir)/srecord/input/filter/interval/length.h: \
		.mkdir.__includedir__srecord_input_filter_interval \
		srecord/input/filter/interval/length.h
	$(INSTALL_DATA) srecord/input/filter/interval/length.h $@

srecord/input/filter/interval/maximum.lo \
		srecord/input/filter/interval/maximum.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/interval.h \
		srecord/input/filter/interval/maximum.cc \
		srecord/input/filter/interval/maximum.h srecord/interval.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/interval/maximum.cc -o \
		srecord/input/filter/interval/maximum.lo

$(includedir)/srecord/input/filter/interval/maximum.h: \
		.mkdir.__includedir__srecord_input_filter_interval \
		srecord/input/filter/interval/maximum.h
	$(INSTALL_DATA) srecord/input/filter/interval/maximum.h $@

srecord/input/filter/interval/minimum.lo \
		srecord/input/filter/interval/minimum.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/interval.h \
		srecord/input/filter/interval/minimum.cc \
		srecord/input/filter/interval/minimum.h srecord/interval.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/interval/minimum.cc -o \
		srecord/input/filter/interval/minimum.lo

$(includedir)/srecord/input/filter/interval/minimum.h: \
		.mkdir.__includedir__srecord_input_filter_interval \
		srecord/input/filter/interval/minimum.h
	$(INSTALL_DATA) srecord/input/filter/interval/minimum.h $@

srecord/input/filter/message.lo srecord/input/filter/message.o: \
		srecord/defcon.h srecord/endian.h srecord/format_printf.h \
		srecord/input.h srecord/input/filter.h \
		srecord/input/filter/message.cc srecord/input/filter/message.h \
		srecord/memory.h srecord/memory/chunk.h \
		srecord/memory/walker.h srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message.cc -o \
		srecord/input/filter/message.lo

$(includedir)/srecord/input/filter/message.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/message.h
	$(INSTALL_DATA) srecord/input/filter/message.h $@

srecord/input/filter/message/adler16.lo \
		srecord/input/filter/message/adler16.o: srecord/adler16.h \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/message.h \
		srecord/input/filter/message/adler16.cc \
		srecord/input/filter/message/adler16.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/adler16.h srecord/output.h \
		srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/adler16.cc -o \
		srecord/input/filter/message/adler16.lo

$(includedir)/srecord/input/filter/message/adler16.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/adler16.h
	$(INSTALL_DATA) srecord/input/filter/message/adler16.h $@

srecord/input/filter/message/adler32.lo \
		srecord/input/filter/message/adler32.o: srecord/adler32.h \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/message.h \
		srecord/input/filter/message/adler32.cc \
		srecord/input/filter/message/adler32.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/adler32.h srecord/output.h \
		srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/adler32.cc -o \
		srecord/input/filter/message/adler32.lo

$(includedir)/srecord/input/filter/message/adler32.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/adler32.h
	$(INSTALL_DATA) srecord/input/filter/message/adler32.h $@

srecord/input/filter/message/crc16.lo srecord/input/filter/message/crc16.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/crc16.h \
		srecord/defcon.h srecord/endian.h srecord/format_printf.h \
		srecord/input.h srecord/input/filter.h \
		srecord/input/filter/message.h \
		srecord/input/filter/message/crc16.cc \
		srecord/input/filter/message/crc16.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/crc16.h srecord/output.h \
		srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/crc16.cc -o \
		srecord/input/filter/message/crc16.lo

$(includedir)/srecord/input/filter/message/crc16.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/crc16.h
	$(INSTALL_DATA) srecord/input/filter/message/crc16.h $@

srecord/input/filter/message/crc32.lo srecord/input/filter/message/crc32.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/crc32.h \
		srecord/defcon.h srecord/endian.h srecord/format_printf.h \
		srecord/input.h srecord/input/filter.h \
		srecord/input/filter/message.h \
		srecord/input/filter/message/crc32.cc \
		srecord/input/filter/message/crc32.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/crc32.h srecord/output.h \
		srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/crc32.cc -o \
		srecord/input/filter/message/crc32.lo

$(includedir)/srecord/input/filter/message/crc32.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/crc32.h
	$(INSTALL_DATA) srecord/input/filter/message/crc32.h $@

srecord/input/filter/message/fletcher16.lo \
		srecord/input/filter/message/fletcher16.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/fletcher16.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/message.h \
		srecord/input/filter/message/fletcher16.cc \
		srecord/input/filter/message/fletcher16.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/fletcher16.h srecord/output.h \
		srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/fletcher16.cc -o \
		srecord/input/filter/message/fletcher16.lo

$(includedir)/srecord/input/filter/message/fletcher16.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/fletcher16.h
	$(INSTALL_DATA) srecord/input/filter/message/fletcher16.h $@

srecord/input/filter/message/fletcher32.lo \
		srecord/input/filter/message/fletcher32.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/fletcher32.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/message.h \
		srecord/input/filter/message/fletcher32.cc \
		srecord/input/filter/message/fletcher32.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/fletcher32.h srecord/output.h \
		srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/fletcher32.cc -o \
		srecord/input/filter/message/fletcher32.lo

$(includedir)/srecord/input/filter/message/fletcher32.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/fletcher32.h
	$(INSTALL_DATA) srecord/input/filter/message/fletcher32.h $@

srecord/input/filter/message/gcrypt.lo srecord/input/filter/message/gcrypt.o: \
		srecord/config.messy.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/message.h \
		srecord/input/filter/message/gcrypt.cc \
		srecord/input/filter/message/gcrypt.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/gcrypt.h srecord/quit.h srecord/record.h \
		srecord/sizeof.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/gcrypt.cc -o \
		srecord/input/filter/message/gcrypt.lo

$(includedir)/srecord/input/filter/message/gcrypt.h: \
		.mkdir.__includedir__srecord_input_filter_message \
		srecord/input/filter/message/gcrypt.h
	$(INSTALL_DATA) srecord/input/filter/message/gcrypt.h $@

srecord/input/filter/message/stm32.lo srecord/input/filter/message/stm32.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/message.h \
		srecord/input/filter/message/stm32.cc \
		srecord/input/filter/message/stm32.h srecord/memory.h \
		srecord/memory/chunk.h srecord/memory/walker.h \
		srecord/memory/walker/stm32.h srecord/output.h \
		srecord/record.h srecord/stm32.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/message/stm32.cc -o \
		srecord/input/filter/message/stm32.lo

srecord/input/filter/not.lo srecord/input/filter/not.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/not.cc srecord/input/filter/not.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/not.cc -o srecord/input/filter/not.lo

$(includedir)/srecord/input/filter/not.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/not.h
	$(INSTALL_DATA) srecord/input/filter/not.h $@

srecord/input/filter/offset.lo srecord/input/filter/offset.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/offset.cc srecord/input/filter/offset.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/offset.cc -o \
		srecord/input/filter/offset.lo

$(includedir)/srecord/input/filter/offset.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/offset.h
	$(INSTALL_DATA) srecord/input/filter/offset.h $@

srecord/input/filter/or.lo srecord/input/filter/or.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/or.cc srecord/input/filter/or.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/or.cc -o srecord/input/filter/or.lo

$(includedir)/srecord/input/filter/or.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/or.h
	$(INSTALL_DATA) srecord/input/filter/or.h $@

srecord/input/filter/random_fill.lo srecord/input/filter/random_fill.o: \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/random_fill.cc \
		srecord/input/filter/random_fill.h srecord/interval.h \
		srecord/r250.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/random_fill.cc -o \
		srecord/input/filter/random_fill.lo

$(includedir)/srecord/input/filter/random_fill.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/random_fill.h
	$(INSTALL_DATA) srecord/input/filter/random_fill.h $@

srecord/input/filter/sequence.lo srecord/input/filter/sequence.o: \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/sequence.cc \
		srecord/input/filter/sequence.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/sequence.cc -o \
		srecord/input/filter/sequence.lo

$(includedir)/srecord/input/filter/sequence.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/sequence.h
	$(INSTALL_DATA) srecord/input/filter/sequence.h $@

srecord/input/filter/split.lo srecord/input/filter/split.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/split.cc srecord/input/filter/split.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/split.cc -o \
		srecord/input/filter/split.lo

$(includedir)/srecord/input/filter/split.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/split.h
	$(INSTALL_DATA) srecord/input/filter/split.h $@

srecord/input/filter/unfill.lo srecord/input/filter/unfill.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/unfill.cc srecord/input/filter/unfill.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/unfill.cc -o \
		srecord/input/filter/unfill.lo

$(includedir)/srecord/input/filter/unfill.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/unfill.h
	$(INSTALL_DATA) srecord/input/filter/unfill.h $@

srecord/input/filter/unsplit.lo srecord/input/filter/unsplit.o: \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/input/filter.h srecord/input/filter/unsplit.cc \
		srecord/input/filter/unsplit.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/unsplit.cc -o \
		srecord/input/filter/unsplit.lo

$(includedir)/srecord/input/filter/unsplit.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/unsplit.h
	$(INSTALL_DATA) srecord/input/filter/unsplit.h $@

srecord/input/filter/xor.lo srecord/input/filter/xor.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/input/filter.h \
		srecord/input/filter/xor.cc srecord/input/filter/xor.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/filter/xor.cc -o srecord/input/filter/xor.lo

$(includedir)/srecord/input/filter/xor.h: \
		.mkdir.__includedir__srecord_input_filter \
		srecord/input/filter/xor.h
	$(INSTALL_DATA) srecord/input/filter/xor.h $@

srecord/input/generator.lo srecord/input/generator.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h \
		srecord/input/generator.cc srecord/input/generator.h \
		srecord/input/generator/constant.h \
		srecord/input/generator/random.h \
		srecord/input/generator/repeat.h srecord/interval.h \
		srecord/output.h srecord/record.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/generator.cc -o srecord/input/generator.lo

$(includedir)/srecord/input/generator.h: .mkdir.__includedir__srecord_input \
		srecord/input/generator.h
	$(INSTALL_DATA) srecord/input/generator.h $@

srecord/input/generator/constant.lo srecord/input/generator/constant.o: \
		srecord/format_printf.h srecord/input.h \
		srecord/input/generator.h srecord/input/generator/constant.cc \
		srecord/input/generator/constant.h srecord/interval.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/generator/constant.cc -o \
		srecord/input/generator/constant.lo

$(includedir)/srecord/input/generator/constant.h: \
		.mkdir.__includedir__srecord_input_generator \
		srecord/input/generator/constant.h
	$(INSTALL_DATA) srecord/input/generator/constant.h $@

srecord/input/generator/random.lo srecord/input/generator/random.o: \
		srecord/format_printf.h srecord/input.h \
		srecord/input/generator.h srecord/input/generator/random.cc \
		srecord/input/generator/random.h srecord/interval.h \
		srecord/r250.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/generator/random.cc -o \
		srecord/input/generator/random.lo

$(includedir)/srecord/input/generator/random.h: \
		.mkdir.__includedir__srecord_input_generator \
		srecord/input/generator/random.h
	$(INSTALL_DATA) srecord/input/generator/random.h $@

srecord/input/generator/repeat.lo srecord/input/generator/repeat.o: \
		srecord/format_printf.h srecord/input.h \
		srecord/input/generator.h srecord/input/generator/repeat.cc \
		srecord/input/generator/repeat.h srecord/interval.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/generator/repeat.cc -o \
		srecord/input/generator/repeat.lo

$(includedir)/srecord/input/generator/repeat.h: \
		.mkdir.__includedir__srecord_input_generator \
		srecord/input/generator/repeat.h
	$(INSTALL_DATA) srecord/input/generator/repeat.h $@

srecord/input/interval.lo srecord/input/interval.o: srecord/endian.h \
		srecord/format_printf.h srecord/input.h \
		srecord/input/interval.cc srecord/input/interval.h \
		srecord/interval.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/input/interval.cc -o srecord/input/interval.lo

srecord/interval.lo srecord/interval.o: srecord/interval.cc srecord/interval.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/interval.cc -o srecord/interval.lo

$(includedir)/srecord/interval.h: .mkdir.__includedir__srecord \
		srecord/interval.h
	$(INSTALL_DATA) srecord/interval.h $@

srecord/interval/coverage.lo srecord/interval/coverage.o: srecord/interval.h \
		srecord/interval/coverage.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/interval/coverage.cc -o srecord/interval/coverage.lo

srecord/interval/flatten.lo srecord/interval/flatten.o: srecord/interval.h \
		srecord/interval/flatten.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/interval/flatten.cc -o srecord/interval/flatten.lo

srecord/memory.lo srecord/memory.o: srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/interval.h \
		srecord/memory.cc srecord/memory.h srecord/memory/chunk.h \
		srecord/memory/walker.h srecord/memory/walker/alignment.h \
		srecord/memory/walker/compare.h \
		srecord/memory/walker/continuity.h srecord/record.h \
		srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory.cc -o srecord/memory.lo

$(includedir)/srecord/memory.h: .mkdir.__includedir__srecord srecord/memory.h
	$(INSTALL_DATA) srecord/memory.h $@

srecord/memory/chunk.lo srecord/memory/chunk.o: srecord/memory/chunk.cc \
		srecord/memory/chunk.h srecord/memory/walker.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/chunk.cc -o srecord/memory/chunk.lo

$(includedir)/srecord/memory/chunk.h: .mkdir.__includedir__srecord_memory \
		srecord/memory/chunk.h
	$(INSTALL_DATA) srecord/memory/chunk.h $@

srecord/memory/walker.lo srecord/memory/walker.o: srecord/memory/walker.cc \
		srecord/memory/walker.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker.cc -o srecord/memory/walker.lo

$(includedir)/srecord/memory/walker.h: .mkdir.__includedir__srecord_memory \
		srecord/memory/walker.h
	$(INSTALL_DATA) srecord/memory/walker.h $@

srecord/memory/walker/adler16.lo srecord/memory/walker/adler16.o: \
		srecord/adler16.h srecord/format_printf.h \
		srecord/memory/walker.h srecord/memory/walker/adler16.cc \
		srecord/memory/walker/adler16.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/adler16.cc -o \
		srecord/memory/walker/adler16.lo

srecord/memory/walker/adler32.lo srecord/memory/walker/adler32.o: \
		srecord/adler32.h srecord/format_printf.h \
		srecord/memory/walker.h srecord/memory/walker/adler32.cc \
		srecord/memory/walker/adler32.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/adler32.cc -o \
		srecord/memory/walker/adler32.lo

srecord/memory/walker/alignment.lo srecord/memory/walker/alignment.o: \
		srecord/memory/walker.h srecord/memory/walker/alignment.cc \
		srecord/memory/walker/alignment.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/alignment.cc -o \
		srecord/memory/walker/alignment.lo

srecord/memory/walker/compare.lo srecord/memory/walker/compare.o: \
		srecord/defcon.h srecord/format_printf.h srecord/input.h \
		srecord/interval.h srecord/memory.h srecord/memory/chunk.h \
		srecord/memory/walker.h srecord/memory/walker/compare.cc \
		srecord/memory/walker/compare.h srecord/string.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/compare.cc -o \
		srecord/memory/walker/compare.lo

$(includedir)/srecord/memory/walker/compare.h: \
		.mkdir.__includedir__srecord_memory_walker \
		srecord/memory/walker/compare.h
	$(INSTALL_DATA) srecord/memory/walker/compare.h $@

srecord/memory/walker/continuity.lo srecord/memory/walker/continuity.o: \
		srecord/memory/walker.h srecord/memory/walker/continuity.cc \
		srecord/memory/walker/continuity.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/continuity.cc -o \
		srecord/memory/walker/continuity.lo

$(includedir)/srecord/memory/walker/continuity.h: \
		.mkdir.__includedir__srecord_memory_walker \
		srecord/memory/walker/continuity.h
	$(INSTALL_DATA) srecord/memory/walker/continuity.h $@

srecord/memory/walker/crc16.lo srecord/memory/walker/crc16.o: srecord/crc16.h \
		srecord/format_printf.h srecord/memory/walker.h \
		srecord/memory/walker/crc16.cc srecord/memory/walker/crc16.h \
		srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/crc16.cc -o \
		srecord/memory/walker/crc16.lo

srecord/memory/walker/crc32.lo srecord/memory/walker/crc32.o: srecord/crc32.h \
		srecord/format_printf.h srecord/memory/walker.h \
		srecord/memory/walker/crc32.cc srecord/memory/walker/crc32.h \
		srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/crc32.cc -o \
		srecord/memory/walker/crc32.lo

srecord/memory/walker/fletcher16.lo srecord/memory/walker/fletcher16.o: \
		srecord/endian.h srecord/fletcher16.h srecord/format_printf.h \
		srecord/memory/walker.h srecord/memory/walker/fletcher16.cc \
		srecord/memory/walker/fletcher16.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/fletcher16.cc -o \
		srecord/memory/walker/fletcher16.lo

srecord/memory/walker/fletcher32.lo srecord/memory/walker/fletcher32.o: \
		srecord/fletcher32.h srecord/format_printf.h \
		srecord/memory/walker.h srecord/memory/walker/fletcher32.cc \
		srecord/memory/walker/fletcher32.h srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/fletcher32.cc -o \
		srecord/memory/walker/fletcher32.lo

srecord/memory/walker/gcrypt.lo srecord/memory/walker/gcrypt.o: \
		srecord/config.messy.h srecord/memory/walker.h \
		srecord/memory/walker/gcrypt.cc srecord/memory/walker/gcrypt.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/gcrypt.cc -o \
		srecord/memory/walker/gcrypt.lo

$(includedir)/srecord/memory/walker/gcrypt.h: \
		.mkdir.__includedir__srecord_memory_walker \
		srecord/memory/walker/gcrypt.h
	$(INSTALL_DATA) srecord/memory/walker/gcrypt.h $@

srecord/memory/walker/stm32.lo srecord/memory/walker/stm32.o: srecord/arglex.h \
		srecord/format_printf.h srecord/memory/walker.h \
		srecord/memory/walker/stm32.cc srecord/memory/walker/stm32.h \
		srecord/output.h srecord/stm32.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/stm32.cc -o \
		srecord/memory/walker/stm32.lo

srecord/memory/walker/writer.lo srecord/memory/walker/writer.o: \
		srecord/format_printf.h srecord/memory/walker.h \
		srecord/memory/walker/writer.cc srecord/memory/walker/writer.h \
		srecord/output.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/memory/walker/writer.cc -o \
		srecord/memory/walker/writer.lo

$(includedir)/srecord/memory/walker/writer.h: \
		.mkdir.__includedir__srecord_memory_walker \
		srecord/memory/walker/writer.h
	$(INSTALL_DATA) srecord/memory/walker/writer.h $@

srecord/output.lo srecord/output.o: srecord/endian.h srecord/format_printf.h \
		srecord/output.cc srecord/output.h srecord/quit.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output.cc -o srecord/output.lo

$(includedir)/srecord/output.h: .mkdir.__includedir__srecord srecord/output.h
	$(INSTALL_DATA) srecord/output.h $@

srecord/output/file.lo srecord/output/file.o: srecord/arglex.h \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.cc srecord/output/file.h srecord/record.h \
		srecord/sizeof.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file.cc -o srecord/output/file.lo

$(includedir)/srecord/output/file.h: .mkdir.__includedir__srecord_output \
		srecord/output/file.h
	$(INSTALL_DATA) srecord/output/file.h $@

srecord/output/file/aomf.lo srecord/output/file/aomf.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/aomf.cc srecord/output/file/aomf.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/aomf.cc -o srecord/output/file/aomf.lo

$(includedir)/srecord/output/file/aomf.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/aomf.h
	$(INSTALL_DATA) srecord/output/file/aomf.h $@

srecord/output/file/ascii_hex.lo srecord/output/file/ascii_hex.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/ascii_hex.cc \
		srecord/output/file/ascii_hex.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/ascii_hex.cc -o \
		srecord/output/file/ascii_hex.lo

$(includedir)/srecord/output/file/ascii_hex.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/ascii_hex.h
	$(INSTALL_DATA) srecord/output/file/ascii_hex.h $@

srecord/output/file/asm.lo srecord/output/file/asm.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/interval.h \
		srecord/output.h srecord/output/file.h \
		srecord/output/file/asm.cc srecord/output/file/asm.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/asm.cc -o srecord/output/file/asm.lo

$(includedir)/srecord/output/file/asm.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/asm.h
	$(INSTALL_DATA) srecord/output/file/asm.h $@

srecord/output/file/atmel_generic.lo srecord/output/file/atmel_generic.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/atmel_generic.cc \
		srecord/output/file/atmel_generic.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/atmel_generic.cc -o \
		srecord/output/file/atmel_generic.lo

$(includedir)/srecord/output/file/atmel_generic.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/atmel_generic.h
	$(INSTALL_DATA) srecord/output/file/atmel_generic.h $@

srecord/output/file/basic.lo srecord/output/file/basic.o: srecord/endian.h \
		srecord/format_printf.h srecord/interval.h srecord/output.h \
		srecord/output/file.h srecord/output/file/basic.cc \
		srecord/output/file/basic.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/basic.cc -o srecord/output/file/basic.lo

$(includedir)/srecord/output/file/basic.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/basic.h
	$(INSTALL_DATA) srecord/output/file/basic.h $@

srecord/output/file/binary.lo srecord/output/file/binary.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/binary.cc srecord/output/file/binary.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/binary.cc -o \
		srecord/output/file/binary.lo

$(includedir)/srecord/output/file/binary.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/binary.h
	$(INSTALL_DATA) srecord/output/file/binary.h $@

srecord/output/file/brecord.lo srecord/output/file/brecord.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/brecord.cc srecord/output/file/brecord.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/brecord.cc -o \
		srecord/output/file/brecord.lo

$(includedir)/srecord/output/file/brecord.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/brecord.h
	$(INSTALL_DATA) srecord/output/file/brecord.h $@

srecord/output/file/c.lo srecord/output/file/c.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/interval.h \
		srecord/output.h srecord/output/file.h \
		srecord/output/file/c.cc srecord/output/file/c.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/c.cc -o srecord/output/file/c.lo

$(includedir)/srecord/output/file/c.h: \
		.mkdir.__includedir__srecord_output_file srecord/output/file/c.h
	$(INSTALL_DATA) srecord/output/file/c.h $@

srecord/output/file/coe.lo srecord/output/file/coe.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/output.h \
		srecord/output/file.h srecord/output/file/coe.cc \
		srecord/output/file/coe.h srecord/progname.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/coe.cc -o srecord/output/file/coe.lo

srecord/output/file/cosmac.lo srecord/output/file/cosmac.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/cosmac.cc srecord/output/file/cosmac.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/cosmac.cc -o \
		srecord/output/file/cosmac.lo

$(includedir)/srecord/output/file/cosmac.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/cosmac.h
	$(INSTALL_DATA) srecord/output/file/cosmac.h $@

srecord/output/file/dec_binary.lo srecord/output/file/dec_binary.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/dec_binary.cc \
		srecord/output/file/dec_binary.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/dec_binary.cc -o \
		srecord/output/file/dec_binary.lo

$(includedir)/srecord/output/file/dec_binary.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/dec_binary.h
	$(INSTALL_DATA) srecord/output/file/dec_binary.h $@

srecord/output/file/emon52.lo srecord/output/file/emon52.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/emon52.cc srecord/output/file/emon52.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/emon52.cc -o \
		srecord/output/file/emon52.lo

$(includedir)/srecord/output/file/emon52.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/emon52.h
	$(INSTALL_DATA) srecord/output/file/emon52.h $@

srecord/output/file/fairchild.lo srecord/output/file/fairchild.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/fairchild.cc \
		srecord/output/file/fairchild.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/fairchild.cc -o \
		srecord/output/file/fairchild.lo

$(includedir)/srecord/output/file/fairchild.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/fairchild.h
	$(INSTALL_DATA) srecord/output/file/fairchild.h $@

srecord/output/file/fastload.lo srecord/output/file/fastload.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/fastload.cc \
		srecord/output/file/fastload.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/fastload.cc -o \
		srecord/output/file/fastload.lo

$(includedir)/srecord/output/file/fastload.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/fastload.h
	$(INSTALL_DATA) srecord/output/file/fastload.h $@

srecord/output/file/formatted_binary.lo \
		srecord/output/file/formatted_binary.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/formatted_binary.cc \
		srecord/output/file/formatted_binary.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/formatted_binary.cc -o \
		srecord/output/file/formatted_binary.lo

$(includedir)/srecord/output/file/formatted_binary.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/formatted_binary.h
	$(INSTALL_DATA) srecord/output/file/formatted_binary.h $@

srecord/output/file/forth.lo srecord/output/file/forth.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/output.h \
		srecord/output/file.h srecord/output/file/forth.cc \
		srecord/output/file/forth.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/forth.cc -o srecord/output/file/forth.lo

$(includedir)/srecord/output/file/forth.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/forth.h
	$(INSTALL_DATA) srecord/output/file/forth.h $@

srecord/output/file/four_packed_code.lo \
		srecord/output/file/four_packed_code.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/four_packed_code.cc \
		srecord/output/file/four_packed_code.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/four_packed_code.cc -o \
		srecord/output/file/four_packed_code.lo

$(includedir)/srecord/output/file/four_packed_code.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/four_packed_code.h
	$(INSTALL_DATA) srecord/output/file/four_packed_code.h $@

srecord/output/file/hexdump.lo srecord/output/file/hexdump.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/hexdump.cc srecord/output/file/hexdump.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/hexdump.cc -o \
		srecord/output/file/hexdump.lo

$(includedir)/srecord/output/file/hexdump.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/hexdump.h
	$(INSTALL_DATA) srecord/output/file/hexdump.h $@

srecord/output/file/idt.lo srecord/output/file/idt.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/idt.cc srecord/output/file/idt.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/idt.cc -o srecord/output/file/idt.lo

srecord/output/file/intel.lo srecord/output/file/intel.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/intel.cc srecord/output/file/intel.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/intel.cc -o srecord/output/file/intel.lo

$(includedir)/srecord/output/file/intel.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/intel.h
	$(INSTALL_DATA) srecord/output/file/intel.h $@

srecord/output/file/intel16.lo srecord/output/file/intel16.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/intel16.cc srecord/output/file/intel16.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/intel16.cc -o \
		srecord/output/file/intel16.lo

$(includedir)/srecord/output/file/intel16.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/intel16.h
	$(INSTALL_DATA) srecord/output/file/intel16.h $@

srecord/output/file/line_termination.lo \
		srecord/output/file/line_termination.o: srecord/arglex.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/line_termination.cc srecord/sizeof.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/line_termination.cc -o \
		srecord/output/file/line_termination.lo

srecord/output/file/logisim.lo srecord/output/file/logisim.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/logisim.cc srecord/output/file/logisim.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/logisim.cc -o \
		srecord/output/file/logisim.lo

$(includedir)/srecord/output/file/logisim.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/logisim.h
	$(INSTALL_DATA) srecord/output/file/logisim.h $@

srecord/output/file/mem.lo srecord/output/file/mem.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/output.h \
		srecord/output/file.h srecord/output/file/mem.cc \
		srecord/output/file/mem.h srecord/progname.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/mem.cc -o srecord/output/file/mem.lo

srecord/output/file/mif.lo srecord/output/file/mif.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/output.h \
		srecord/output/file.h srecord/output/file/mif.cc \
		srecord/output/file/mif.h srecord/progname.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/mif.cc -o srecord/output/file/mif.lo

$(includedir)/srecord/output/file/mif.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/mif.h
	$(INSTALL_DATA) srecord/output/file/mif.h $@

srecord/output/file/mips_flash.lo srecord/output/file/mips_flash.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/mips_flash.cc \
		srecord/output/file/mips_flash.h srecord/record.h \
		srecord/sizeof.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/mips_flash.cc -o \
		srecord/output/file/mips_flash.lo

$(includedir)/srecord/output/file/mips_flash.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/mips_flash.h
	$(INSTALL_DATA) srecord/output/file/mips_flash.h $@

srecord/output/file/mos_tech.lo srecord/output/file/mos_tech.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/mos_tech.cc \
		srecord/output/file/mos_tech.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/mos_tech.cc -o \
		srecord/output/file/mos_tech.lo

$(includedir)/srecord/output/file/mos_tech.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/mos_tech.h
	$(INSTALL_DATA) srecord/output/file/mos_tech.h $@

srecord/output/file/motorola.lo srecord/output/file/motorola.o: \
		srecord/arglex.h srecord/arglex/tool.h srecord/defcon.h \
		srecord/endian.h srecord/format_printf.h srecord/input.h \
		srecord/output.h srecord/output/file.h \
		srecord/output/file/motorola.cc srecord/output/file/motorola.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/motorola.cc -o \
		srecord/output/file/motorola.lo

srecord/output/file/msbin.lo srecord/output/file/msbin.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/msbin.cc srecord/output/file/msbin.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/msbin.cc -o srecord/output/file/msbin.lo

$(includedir)/srecord/output/file/msbin.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/msbin.h
	$(INSTALL_DATA) srecord/output/file/msbin.h $@

srecord/output/file/needham.lo srecord/output/file/needham.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/needham.cc srecord/output/file/needham.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/needham.cc -o \
		srecord/output/file/needham.lo

$(includedir)/srecord/output/file/needham.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/needham.h
	$(INSTALL_DATA) srecord/output/file/needham.h $@

srecord/output/file/os65v.lo srecord/output/file/os65v.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/os65v.cc srecord/output/file/os65v.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/os65v.cc -o srecord/output/file/os65v.lo

$(includedir)/srecord/output/file/os65v.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/os65v.h
	$(INSTALL_DATA) srecord/output/file/os65v.h $@

srecord/output/file/ppb.lo srecord/output/file/ppb.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/ppb.cc srecord/output/file/ppb.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/ppb.cc -o srecord/output/file/ppb.lo

$(includedir)/srecord/output/file/ppb.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/ppb.h
	$(INSTALL_DATA) srecord/output/file/ppb.h $@

srecord/output/file/ppx.lo srecord/output/file/ppx.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/ppx.cc srecord/output/file/ppx.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/ppx.cc -o srecord/output/file/ppx.lo

$(includedir)/srecord/output/file/ppx.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/ppx.h
	$(INSTALL_DATA) srecord/output/file/ppx.h $@

srecord/output/file/signetics.lo srecord/output/file/signetics.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/signetics.cc \
		srecord/output/file/signetics.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/signetics.cc -o \
		srecord/output/file/signetics.lo

$(includedir)/srecord/output/file/signetics.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/signetics.h
	$(INSTALL_DATA) srecord/output/file/signetics.h $@

srecord/output/file/spasm.lo srecord/output/file/spasm.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/spasm.cc srecord/output/file/spasm.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/spasm.cc -o srecord/output/file/spasm.lo

$(includedir)/srecord/output/file/spasm.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/spasm.h
	$(INSTALL_DATA) srecord/output/file/spasm.h $@

srecord/output/file/spectrum.lo srecord/output/file/spectrum.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/spectrum.cc \
		srecord/output/file/spectrum.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/spectrum.cc -o \
		srecord/output/file/spectrum.lo

$(includedir)/srecord/output/file/spectrum.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/spectrum.h
	$(INSTALL_DATA) srecord/output/file/spectrum.h $@

srecord/output/file/stewie.lo srecord/output/file/stewie.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/stewie.cc srecord/output/file/stewie.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/stewie.cc -o \
		srecord/output/file/stewie.lo

$(includedir)/srecord/output/file/stewie.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/stewie.h
	$(INSTALL_DATA) srecord/output/file/stewie.h $@

srecord/output/file/tektronix.lo srecord/output/file/tektronix.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/tektronix.cc \
		srecord/output/file/tektronix.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/tektronix.cc -o \
		srecord/output/file/tektronix.lo

$(includedir)/srecord/output/file/tektronix.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/tektronix.h
	$(INSTALL_DATA) srecord/output/file/tektronix.h $@

srecord/output/file/tektronix_extended.lo \
		srecord/output/file/tektronix_extended.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/tektronix_extended.cc \
		srecord/output/file/tektronix_extended.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/tektronix_extended.cc -o \
		srecord/output/file/tektronix_extended.lo

$(includedir)/srecord/output/file/tektronix_extended.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/tektronix_extended.h
	$(INSTALL_DATA) srecord/output/file/tektronix_extended.h $@

srecord/output/file/ti_tagged.lo srecord/output/file/ti_tagged.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/ti_tagged.cc \
		srecord/output/file/ti_tagged.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/ti_tagged.cc -o \
		srecord/output/file/ti_tagged.lo

$(includedir)/srecord/output/file/ti_tagged.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/ti_tagged.h
	$(INSTALL_DATA) srecord/output/file/ti_tagged.h $@

srecord/output/file/ti_tagged_16.lo srecord/output/file/ti_tagged_16.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/file.h srecord/output/file/ti_tagged_16.cc \
		srecord/output/file/ti_tagged_16.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/ti_tagged_16.cc -o \
		srecord/output/file/ti_tagged_16.lo

$(includedir)/srecord/output/file/ti_tagged_16.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/ti_tagged_16.h
	$(INSTALL_DATA) srecord/output/file/ti_tagged_16.h $@

srecord/output/file/ti_txt.lo srecord/output/file/ti_txt.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/ti_txt.cc srecord/output/file/ti_txt.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/ti_txt.cc -o \
		srecord/output/file/ti_txt.lo

$(includedir)/srecord/output/file/ti_txt.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/ti_txt.h
	$(INSTALL_DATA) srecord/output/file/ti_txt.h $@

srecord/output/file/trs80.lo srecord/output/file/trs80.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/trs80.cc srecord/output/file/trs80.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/trs80.cc -o srecord/output/file/trs80.lo

$(includedir)/srecord/output/file/trs80.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/trs80.h
	$(INSTALL_DATA) srecord/output/file/trs80.h $@

srecord/output/file/vhdl.lo srecord/output/file/vhdl.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/interval.h \
		srecord/output.h srecord/output/file.h \
		srecord/output/file/vhdl.cc srecord/output/file/vhdl.h \
		srecord/progname.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/vhdl.cc -o srecord/output/file/vhdl.lo

$(includedir)/srecord/output/file/vhdl.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/vhdl.h
	$(INSTALL_DATA) srecord/output/file/vhdl.h $@

srecord/output/file/vmem.lo srecord/output/file/vmem.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/output.h \
		srecord/output/file.h srecord/output/file/vmem.cc \
		srecord/output/file/vmem.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/vmem.cc -o srecord/output/file/vmem.lo

$(includedir)/srecord/output/file/vmem.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/vmem.h
	$(INSTALL_DATA) srecord/output/file/vmem.h $@

srecord/output/file/wilson.lo srecord/output/file/wilson.o: srecord/endian.h \
		srecord/format_printf.h srecord/output.h srecord/output/file.h \
		srecord/output/file/wilson.cc srecord/output/file/wilson.h \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/file/wilson.cc -o \
		srecord/output/file/wilson.lo

$(includedir)/srecord/output/file/wilson.h: \
		.mkdir.__includedir__srecord_output_file \
		srecord/output/file/wilson.h
	$(INSTALL_DATA) srecord/output/file/wilson.h $@

srecord/output/filter.lo srecord/output/filter.o: srecord/format_printf.h \
		srecord/output.h srecord/output/filter.cc \
		srecord/output/filter.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/filter.cc -o srecord/output/filter.lo

srecord/output/filter/reblock.lo srecord/output/filter/reblock.o: \
		srecord/endian.h srecord/format_printf.h srecord/output.h \
		srecord/output/filter.h srecord/output/filter/reblock.cc \
		srecord/output/filter/reblock.h srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/output/filter/reblock.cc -o \
		srecord/output/filter/reblock.lo

srecord/pretty_size.lo srecord/pretty_size.o: srecord/pretty_size.cc \
		srecord/pretty_size.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/pretty_size.cc -o srecord/pretty_size.lo

srecord/progname.lo srecord/progname.o: srecord/progname.cc srecord/progname.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/progname.cc -o srecord/progname.lo

srecord/quit.lo srecord/quit.o: srecord/format_printf.h srecord/quit.cc \
		srecord/quit.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/quit.cc -o srecord/quit.lo

$(includedir)/srecord/quit.h: .mkdir.__includedir__srecord srecord/quit.h
	$(INSTALL_DATA) srecord/quit.h $@

srecord/quit/exception.lo srecord/quit/exception.o: srecord/format_printf.h \
		srecord/quit.h srecord/quit/exception.cc \
		srecord/quit/exception.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/quit/exception.cc -o srecord/quit/exception.lo

$(includedir)/srecord/quit/exception.h: .mkdir.__includedir__srecord_quit \
		srecord/quit/exception.h
	$(INSTALL_DATA) srecord/quit/exception.h $@

srecord/quit/normal.lo srecord/quit/normal.o: srecord/format_printf.h \
		srecord/progname.h srecord/quit.h srecord/quit/normal.cc \
		srecord/quit/normal.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/quit/normal.cc -o srecord/quit/normal.lo

$(includedir)/srecord/quit/normal.h: .mkdir.__includedir__srecord_quit \
		srecord/quit/normal.h
	$(INSTALL_DATA) srecord/quit/normal.h $@

srecord/quit/prefix.lo srecord/quit/prefix.o: srecord/format_printf.h \
		srecord/quit.h srecord/quit/prefix.cc srecord/quit/prefix.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/quit/prefix.cc -o srecord/quit/prefix.lo

$(includedir)/srecord/quit/prefix.h: .mkdir.__includedir__srecord_quit \
		srecord/quit/prefix.h
	$(INSTALL_DATA) srecord/quit/prefix.h $@

srecord/r250.lo srecord/r250.o: srecord/r250.cc srecord/r250.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/r250.cc -o srecord/r250.lo

srecord/record.lo srecord/record.o: srecord/endian.h srecord/record.cc \
		srecord/record.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/record.cc -o srecord/record.lo

$(includedir)/srecord/record.h: .mkdir.__includedir__srecord srecord/record.h
	$(INSTALL_DATA) srecord/record.h $@

$(includedir)/srecord/srecord.h: .mkdir.__includedir__srecord srecord/srecord.h
	$(INSTALL_DATA) srecord/srecord.h $@

srecord/stm32.lo srecord/stm32.o: srecord/stm32.cc srecord/stm32.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/stm32.cc -o srecord/stm32.lo

$(includedir)/srecord/string.h: .mkdir.__includedir__srecord srecord/string.h
	$(INSTALL_DATA) srecord/string.h $@

srecord/string/quote_c.lo srecord/string/quote_c.o: srecord/string.h \
		srecord/string/quote_c.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/string/quote_c.cc -o srecord/string/quote_c.lo

srecord/string/url_decode.lo srecord/string/url_decode.o: srecord/string.h \
		srecord/string/url_decode.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/string/url_decode.cc -o srecord/string/url_decode.lo

srecord/string/url_encode.lo srecord/string/url_encode.o: srecord/string.h \
		srecord/string/url_encode.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/string/url_encode.cc -o srecord/string/url_encode.lo

srecord/versn_stamp.lo srecord/versn_stamp.o: srecord/progname.h \
		srecord/versn_stamp.cc srecord/versn_stamp.h
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/versn_stamp.cc -o srecord/versn_stamp.lo

srecord/vsnprintf.lo srecord/vsnprintf.o: srecord/config.messy.h \
		srecord/vsnprintf.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c srecord/vsnprintf.cc -o srecord/vsnprintf.lo

t0001a: all test/00/t0001a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0001a.sh

t0002a: all test/00/t0002a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0002a.sh

t0003a: all test/00/t0003a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0003a.sh

t0004a: all test/00/t0004a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0004a.sh

t0005a: all test/00/t0005a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0005a.sh

t0006a: all test/00/t0006a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0006a.sh

t0007a: all test/00/t0007a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0007a.sh

t0008a: all test/00/t0008a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0008a.sh

t0009a: all test/00/t0009a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0009a.sh

t0010a: all test/00/t0010a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0010a.sh

t0011a: all test/00/t0011a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0011a.sh

t0012a: all test/00/t0012a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0012a.sh

t0013a: all test/00/t0013a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0013a.sh

t0014a: all test/00/t0014a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0014a.sh

t0015a: all test/00/t0015a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0015a.sh

t0016a: all test/00/t0016a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0016a.sh

t0017a: all test/00/t0017a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0017a.sh

t0018a: all test/00/t0018a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0018a.sh

t0019a: all test/00/t0019a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0019a.sh

t0020a: all test/00/t0020a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0020a.sh

t0021a: all test/00/t0021a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0021a.sh

t0022a: all test/00/t0022a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0022a.sh

t0023a: all test/00/t0023a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0023a.sh

t0024a: all test/00/t0024a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0024a.sh

t0025a: all test/00/t0025a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0025a.sh

t0026a: all test/00/t0026a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0026a.sh

t0027a: all test/00/t0027a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0027a.sh

t0028a: all test/00/t0028a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0028a.sh

t0029a: all test/00/t0029a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0029a.sh

t0030a: all test/00/t0030a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0030a.sh

t0031a: all test/00/t0031a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0031a.sh

t0032a: all test/00/t0032a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0032a.sh

t0033a: all test/00/t0033a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0033a.sh

t0034a: all test/00/t0034a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0034a.sh

t0035a: all test/00/t0035a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0035a.sh

t0036a: all test/00/t0036a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0036a.sh

t0037a: all test/00/t0037a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0037a.sh

t0037b: all test/00/t0037b.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0037b.sh

t0038a: all test/00/t0038a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0038a.sh

t0039a: all test/00/t0039a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0039a.sh

t0040a: all test/00/t0040a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0040a.sh

t0050a: all test/00/t0050a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0050a.sh

t0051a: all test/00/t0051a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0051a.sh

t0052a: all test/00/t0052a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0052a.sh

t0053a: all test/00/t0053a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0053a.sh

t0055a: all test/00/t0055a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0055a.sh

t0056a: all test/00/t0056a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0056a.sh

t0057a: all test/00/t0057a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0057a.sh

t0058a: all test/00/t0058a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0058a.sh

t0059a: all test/00/t0059a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0059a.sh

t0060a: all test/00/t0060a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0060a.sh

t0061a: all test/00/t0061a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0061a.sh

t0062a: all test/00/t0062a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0062a.sh

t0063a: all test/00/t0063a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0063a.sh

t0065a: all test/00/t0065a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0065a.sh

t0066a: all test/00/t0066a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0066a.sh

t0067a: all test/00/t0067a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0067a.sh

t0068a: all test/00/t0068a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0068a.sh

t0069a: all test/00/t0069a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0069a.sh

t0070a: all test/00/t0070a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0070a.sh

t0071a: all test/00/t0071a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0071a.sh

t0072a: all test/00/t0072a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0072a.sh

t0073a: all test/00/t0073a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0073a.sh

t0075a: all test/00/t0075a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0075a.sh

t0076a: all test/00/t0076a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0076a.sh

t0077a: all test/00/t0077a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0077a.sh

t0078a: all test/00/t0078a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0078a.sh

t0079a: all test/00/t0079a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0079a.sh

t0080a: all test/00/t0080a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0080a.sh

t0081a: all test/00/t0081a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0081a.sh

t0082a: all test/00/t0082a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0082a.sh

t0083a: all test/00/t0083a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0083a.sh

t0085a: all test/00/t0085a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0085a.sh

t0086a: all test/00/t0086a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0086a.sh

t0087a: all test/00/t0087a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0087a.sh

t0088a: all test/00/t0088a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0088a.sh

t0089a: all test/00/t0089a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0089a.sh

t0090a: all test/00/t0090a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0090a.sh

t0091a: all test/00/t0091a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0091a.sh

t0092a: all test/00/t0092a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0092a.sh

t0093a: all test/00/t0093a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0093a.sh

t0095a: all test/00/t0095a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0095a.sh

t0096a: all test/00/t0096a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0096a.sh

t0097a: all test/00/t0097a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0097a.sh

t0098a: all test/00/t0098a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0098a.sh

t0099a: all test/00/t0099a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/00/t0099a.sh

t0100a: all test/01/t0100a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0100a.sh

t0101a: all test/01/t0101a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0101a.sh

t0102a: all test/01/t0102a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0102a.sh

t0103a: all test/01/t0103a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0103a.sh

t0105a: all test/01/t0105a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0105a.sh

t0106a: all test/01/t0106a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0106a.sh

t0107a: all test/01/t0107a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0107a.sh

t0108a: all test/01/t0108a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0108a.sh

t0109a: all test/01/t0109a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0109a.sh

t0110a: all test/01/t0110a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0110a.sh

t0111a: all test/01/t0111a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0111a.sh

t0112a: all test/01/t0112a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0112a.sh

t0113a: all test/01/t0113a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0113a.sh

t0115a: all test/01/t0115a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0115a.sh

t0116a: all test/01/t0116a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0116a.sh

t0117a: all test/01/t0117a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0117a.sh

t0118a: all test/01/t0118a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0118a.sh

t0119a: all test/01/t0119a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0119a.sh

t0120a: all test/01/t0120a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0120a.sh

t0121a: all test/01/t0121a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0121a.sh

t0122a: all test/01/t0122a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0122a.sh

t0123a: all test/01/t0123a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0123a.sh

t0125a: all test/01/t0125a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0125a.sh

t0126a: all test/01/t0126a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0126a.sh

t0127a: all test/01/t0127a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0127a.sh

t0128a: all test/01/t0128a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0128a.sh

t0129a: all test/01/t0129a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0129a.sh

t0130a: all test/01/t0130a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0130a.sh

t0131a: all test/01/t0131a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0131a.sh

t0132a: all test/01/t0132a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0132a.sh

t0133a: all test/01/t0133a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0133a.sh

t0135a: all test/01/t0135a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0135a.sh

t0136a: all test/01/t0136a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0136a.sh

t0137a: all test/01/t0137a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0137a.sh

t0138a: all test/01/t0138a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0138a.sh

t0139a: all test/01/t0139a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0139a.sh

t0150a: all test/01/t0150a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0150a.sh

t0151a: all test/01/t0151a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0151a.sh

t0152a: all test/01/t0152a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0152a.sh

t0153a: all test/01/t0153a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0153a.sh

t0155a: all test/01/t0155a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0155a.sh

t0156a: all test/01/t0156a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0156a.sh

t0157a: all test/01/t0157a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0157a.sh

t0158a: all test/01/t0158a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0158a.sh

t0159a: all test/01/t0159a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0159a.sh

t0160a: all test/01/t0160a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0160a.sh

t0161a: all test/01/t0161a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0161a.sh

t0162a: all test/01/t0162a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0162a.sh

t0163a: all test/01/t0163a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0163a.sh

t0165a: all test/01/t0165a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0165a.sh

t0166a: all test/01/t0166a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0166a.sh

t0167a: all test/01/t0167a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0167a.sh

t0168a: all test/01/t0168a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0168a.sh

t0169a: all test/01/t0169a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0169a.sh

t0170a: all test/01/t0170a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0170a.sh

t0171a: all test/01/t0171a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0171a.sh

t0172a: all test/01/t0172a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0172a.sh

t0173a: all test/01/t0173a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0173a.sh

t0175a: all test/01/t0175a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0175a.sh

t0176a: all test/01/t0176a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0176a.sh

t0177a: all test/01/t0177a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0177a.sh

t0178a: all test/01/t0178a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0178a.sh

t0179a: all test/01/t0179a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0179a.sh

t0180a: all test/01/t0180a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0180a.sh

t0181a: all test/01/t0181a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0181a.sh

t0182a: all test/01/t0182a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0182a.sh

t0183a: all test/01/t0183a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0183a.sh

t0185a: all test/01/t0185a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0185a.sh

t0186a: all test/01/t0186a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0186a.sh

t0187a: all test/01/t0187a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0187a.sh

t0188a: all test/01/t0188a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0188a.sh

t0189a: all test/01/t0189a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0189a.sh

t0191a: all test/01/t0191a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0191a.sh

t0192a: all test/01/t0192a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0192a.sh

t0193a: all test/01/t0193a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0193a.sh

t0195a: all test/01/t0195a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0195a.sh

t0196a: all test/01/t0196a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0196a.sh

t0197a: all test/01/t0197a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0197a.sh

t0198a: all test/01/t0198a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0198a.sh

t0199a: all test/01/t0199a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/01/t0199a.sh

t0200a: all test/02/t0200a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0200a.sh

t0201a: all test/02/t0201a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0201a.sh

t0202a: all test/02/t0202a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0202a.sh

t0203a: all test/02/t0203a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0203a.sh

t0205a: all test/02/t0205a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0205a.sh

t0206a: all test/02/t0206a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0206a.sh

t0207a: all test/02/t0207a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0207a.sh

t0209a: all test/02/t0209a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0209a.sh

t0210a: all test/02/t0210a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0210a.sh

t0211a: all test/02/t0211a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0211a.sh

t0212a: all test/02/t0212a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0212a.sh

t0213a: all test/02/t0213a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0213a.sh

t0215a: all test/02/t0215a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0215a.sh

t0216a: all test/02/t0216a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0216a.sh

t0217a: all test/02/t0217a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0217a.sh

t0218a: all test/02/t0218a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0218a.sh

t0219a: all test/02/t0219a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0219a.sh

t0220a: all test/02/t0220a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0220a.sh

t0221a: all test/02/t0221a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0221a.sh

t0222a: all test/02/t0222a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0222a.sh

t0223a: all test/02/t0223a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0223a.sh

t0225a: all test/02/t0225a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0225a.sh

t0227a: all test/02/t0227a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0227a.sh

t0228a: all test/02/t0228a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0228a.sh

t0229a: all test/02/t0229a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0229a.sh

t0230a: all test/02/t0230a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0230a.sh

t0231a: all test/02/t0231a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0231a.sh

t0232a: all test/02/t0232a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0232a.sh

t0233a: all test/02/t0233a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0233a.sh

t0235a: all test/02/t0235a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0235a.sh

t0236a: all test/02/t0236a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0236a.sh

t0237a: all test/02/t0237a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0237a.sh

t0238a: all test/02/t0238a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0238a.sh

t0239a: all test/02/t0239a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0239a.sh

t0250a: all test/02/t0250a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0250a.sh

t0251a: all test/02/t0251a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0251a.sh

t0253a: all test/02/t0253a.sh
	PATH=`pwd`/bin:$$PATH $(SH) test/02/t0253a.sh

test/arglex_ambiguous/main.lo test/arglex_ambiguous/main.o: srecord/arglex.h \
		srecord/arglex/tool.h srecord/defcon.h srecord/endian.h \
		srecord/format_printf.h srecord/input.h srecord/output.h \
		test/arglex_ambiguous/main.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c test/arglex_ambiguous/main.cc -o \
		test/arglex_ambiguous/main.lo

test/crc16/main.lo test/crc16/main.o: srecord/bitrev.h srecord/crc16.h \
		srecord/format_printf.h srecord/progname.h srecord/quit.h \
		srecord/versn_stamp.h test/crc16/main.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c test/crc16/main.cc -o test/crc16/main.lo

test/fletcher16/main.lo test/fletcher16/main.o: srecord/endian.h \
		srecord/fletcher16.h test/fletcher16/main.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c test/fletcher16/main.cc -o test/fletcher16/main.lo

test/gecos/main.lo test/gecos/main.o: srecord/arglex.h srecord/format_printf.h \
		test/gecos/main.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c test/gecos/main.cc -o test/gecos/main.lo

test/hyphen/main.lo test/hyphen/main.o: srecord/format_printf.h \
		srecord/progname.h srecord/quit.h srecord/versn_stamp.h \
		test/hyphen/main.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c test/hyphen/main.cc -o test/hyphen/main.lo

test/url_decode/main.lo test/url_decode/main.o: srecord/progname.h \
		srecord/string.h srecord/versn_stamp.h test/url_decode/main.cc
	$(LIBTOOL) --mode=compile --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -I. \
		-c test/url_decode/main.cc -o test/url_decode/main.lo

#
# The srecord/libsrecord.la library.
#
srecord_obj = srecord/adler16.lo srecord/adler32.lo srecord/arglex.lo \
		srecord/arglex/abbreviate.lo srecord/arglex/test_ambiguous.lo \
		srecord/arglex/tool.lo srecord/arglex/tool/get_interval.lo \
		srecord/arglex/tool/get_interval_small.lo \
		srecord/arglex/tool/get_number.lo \
		srecord/arglex/tool/get_string.lo srecord/arglex/tool/input.lo \
		srecord/arglex/tool/output.lo srecord/bitrev.lo \
		srecord/crc16.lo srecord/crc32.lo srecord/defcon.lo \
		srecord/endian.lo srecord/endian/decode_word.lo \
		srecord/fletcher16.lo srecord/fletcher32.lo srecord/input.lo \
		srecord/input/catenate.lo srecord/input/file.lo \
		srecord/input/file/aomf.lo srecord/input/file/ascii_hex.lo \
		srecord/input/file/atmel_generic.lo \
		srecord/input/file/binary.lo srecord/input/file/brecord.lo \
		srecord/input/file/cosmac.lo srecord/input/file/dec_binary.lo \
		srecord/input/file/emon52.lo srecord/input/file/fairchild.lo \
		srecord/input/file/fastload.lo \
		srecord/input/file/formatted_binary.lo \
		srecord/input/file/four_packed_code.lo \
		srecord/input/file/guess.lo srecord/input/file/hexdump.lo \
		srecord/input/file/idt.lo srecord/input/file/intel.lo \
		srecord/input/file/intel16.lo srecord/input/file/logisim.lo \
		srecord/input/file/mif.lo srecord/input/file/mips_flash.lo \
		srecord/input/file/mos_tech.lo srecord/input/file/motorola.lo \
		srecord/input/file/msbin.lo srecord/input/file/needham.lo \
		srecord/input/file/os65v.lo srecord/input/file/ppb.lo \
		srecord/input/file/ppx.lo srecord/input/file/signetics.lo \
		srecord/input/file/spasm.lo srecord/input/file/spectrum.lo \
		srecord/input/file/stewie.lo srecord/input/file/tektronix.lo \
		srecord/input/file/tektronix_extended.lo \
		srecord/input/file/ti_tagged.lo \
		srecord/input/file/ti_tagged_16.lo \
		srecord/input/file/ti_txt.lo srecord/input/file/trs80.lo \
		srecord/input/file/vmem.lo srecord/input/file/wilson.lo \
		srecord/input/filter.lo srecord/input/filter/and.lo \
		srecord/input/filter/bitrev.lo \
		srecord/input/filter/byte_swap.lo \
		srecord/input/filter/checksum.lo \
		srecord/input/filter/checksum/bitnot.lo \
		srecord/input/filter/checksum/negative.lo \
		srecord/input/filter/checksum/positive.lo \
		srecord/input/filter/crop.lo srecord/input/filter/fill.lo \
		srecord/input/filter/interval.lo \
		srecord/input/filter/interval/length.lo \
		srecord/input/filter/interval/maximum.lo \
		srecord/input/filter/interval/minimum.lo \
		srecord/input/filter/message.lo \
		srecord/input/filter/message/adler16.lo \
		srecord/input/filter/message/adler32.lo \
		srecord/input/filter/message/crc16.lo \
		srecord/input/filter/message/crc32.lo \
		srecord/input/filter/message/fletcher16.lo \
		srecord/input/filter/message/fletcher32.lo \
		srecord/input/filter/message/gcrypt.lo \
		srecord/input/filter/message/stm32.lo \
		srecord/input/filter/not.lo srecord/input/filter/offset.lo \
		srecord/input/filter/or.lo srecord/input/filter/random_fill.lo \
		srecord/input/filter/sequence.lo srecord/input/filter/split.lo \
		srecord/input/filter/unfill.lo srecord/input/filter/unsplit.lo \
		srecord/input/filter/xor.lo srecord/input/generator.lo \
		srecord/input/generator/constant.lo \
		srecord/input/generator/random.lo \
		srecord/input/generator/repeat.lo srecord/input/interval.lo \
		srecord/interval.lo srecord/interval/coverage.lo \
		srecord/interval/flatten.lo srecord/memory.lo \
		srecord/memory/chunk.lo srecord/memory/walker.lo \
		srecord/memory/walker/adler16.lo \
		srecord/memory/walker/adler32.lo \
		srecord/memory/walker/alignment.lo \
		srecord/memory/walker/compare.lo \
		srecord/memory/walker/continuity.lo \
		srecord/memory/walker/crc16.lo srecord/memory/walker/crc32.lo \
		srecord/memory/walker/fletcher16.lo \
		srecord/memory/walker/fletcher32.lo \
		srecord/memory/walker/gcrypt.lo srecord/memory/walker/stm32.lo \
		srecord/memory/walker/writer.lo srecord/output.lo \
		srecord/output/file.lo srecord/output/file/aomf.lo \
		srecord/output/file/ascii_hex.lo srecord/output/file/asm.lo \
		srecord/output/file/atmel_generic.lo \
		srecord/output/file/basic.lo srecord/output/file/binary.lo \
		srecord/output/file/brecord.lo srecord/output/file/c.lo \
		srecord/output/file/coe.lo srecord/output/file/cosmac.lo \
		srecord/output/file/dec_binary.lo \
		srecord/output/file/emon52.lo srecord/output/file/fairchild.lo \
		srecord/output/file/fastload.lo \
		srecord/output/file/formatted_binary.lo \
		srecord/output/file/forth.lo \
		srecord/output/file/four_packed_code.lo \
		srecord/output/file/hexdump.lo srecord/output/file/idt.lo \
		srecord/output/file/intel.lo srecord/output/file/intel16.lo \
		srecord/output/file/line_termination.lo \
		srecord/output/file/logisim.lo srecord/output/file/mem.lo \
		srecord/output/file/mif.lo srecord/output/file/mips_flash.lo \
		srecord/output/file/mos_tech.lo \
		srecord/output/file/motorola.lo srecord/output/file/msbin.lo \
		srecord/output/file/needham.lo srecord/output/file/os65v.lo \
		srecord/output/file/ppb.lo srecord/output/file/ppx.lo \
		srecord/output/file/signetics.lo srecord/output/file/spasm.lo \
		srecord/output/file/spectrum.lo srecord/output/file/stewie.lo \
		srecord/output/file/tektronix.lo \
		srecord/output/file/tektronix_extended.lo \
		srecord/output/file/ti_tagged.lo \
		srecord/output/file/ti_tagged_16.lo \
		srecord/output/file/ti_txt.lo srecord/output/file/trs80.lo \
		srecord/output/file/vhdl.lo srecord/output/file/vmem.lo \
		srecord/output/file/wilson.lo srecord/output/filter.lo \
		srecord/output/filter/reblock.lo srecord/pretty_size.lo \
		srecord/progname.lo srecord/quit.lo srecord/quit/exception.lo \
		srecord/quit/normal.lo srecord/quit/prefix.lo srecord/r250.lo \
		srecord/record.lo srecord/stm32.lo srecord/string/quote_c.lo \
		srecord/string/url_decode.lo srecord/string/url_encode.lo \
		srecord/versn_stamp.lo srecord/vsnprintf.lo

srecord/libsrecord.la: $(srecord_obj)
	rm -f $@
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) \
		$(LDFLAGS) -o $@ $(srecord_obj) $(LIBS) -rpath $(libdir) \
		-version-info 0:0:0

#
# The install of the *.la file automatically causes "$(LIBTOOL) --mode=install"
# to install the *.a and *.so* files as well, which is why you don't see them
# explicitly mentioned here.
#
$(libdir)/libsrecord.la: .mkdir.__libdir_ srecord/libsrecord.la
	$(LIBTOOL) --mode=install $(INSTALL_DATA) srecord/libsrecord.la $@

.mkdir.__bindir_:
	-$(INSTALL_DIR) $(bindir)
	@-test -d $(bindir) && touch $@
	@sleep 1

.mkdir.__datarootdir_:
	-$(INSTALL_DIR) $(datarootdir)
	@-test -d $(datarootdir) && touch $@
	@sleep 1

.mkdir.__datarootdir__doc: .mkdir.__datarootdir_
	-$(INSTALL_DIR) $(datarootdir)/doc
	@-test -d $(datarootdir)/doc && touch $@
	@sleep 1

.mkdir.__datarootdir__doc_srecord: .mkdir.__datarootdir__doc
	-$(INSTALL_DIR) $(datarootdir)/doc/srecord
	@-test -d $(datarootdir)/doc/srecord && touch $@
	@sleep 1

.mkdir.__includedir_:
	-$(INSTALL_DIR) $(includedir)
	@-test -d $(includedir) && touch $@
	@sleep 1

.mkdir.__includedir__srecord: .mkdir.__includedir_
	-$(INSTALL_DIR) $(includedir)/srecord
	@-test -d $(includedir)/srecord && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input: .mkdir.__includedir__srecord
	-$(INSTALL_DIR) $(includedir)/srecord/input
	@-test -d $(includedir)/srecord/input && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input_file: .mkdir.__includedir__srecord_input
	-$(INSTALL_DIR) $(includedir)/srecord/input/file
	@-test -d $(includedir)/srecord/input/file && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input_filter: .mkdir.__includedir__srecord_input
	-$(INSTALL_DIR) $(includedir)/srecord/input/filter
	@-test -d $(includedir)/srecord/input/filter && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input_filter_checksum: \
		.mkdir.__includedir__srecord_input_filter
	-$(INSTALL_DIR) $(includedir)/srecord/input/filter/checksum
	@-test -d $(includedir)/srecord/input/filter/checksum && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input_filter_interval: \
		.mkdir.__includedir__srecord_input_filter
	-$(INSTALL_DIR) $(includedir)/srecord/input/filter/interval
	@-test -d $(includedir)/srecord/input/filter/interval && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input_filter_message: \
		.mkdir.__includedir__srecord_input_filter
	-$(INSTALL_DIR) $(includedir)/srecord/input/filter/message
	@-test -d $(includedir)/srecord/input/filter/message && touch $@
	@sleep 1

.mkdir.__includedir__srecord_input_generator: .mkdir.__includedir__srecord_input
	-$(INSTALL_DIR) $(includedir)/srecord/input/generator
	@-test -d $(includedir)/srecord/input/generator && touch $@
	@sleep 1

.mkdir.__includedir__srecord_memory: .mkdir.__includedir__srecord
	-$(INSTALL_DIR) $(includedir)/srecord/memory
	@-test -d $(includedir)/srecord/memory && touch $@
	@sleep 1

.mkdir.__includedir__srecord_memory_walker: .mkdir.__includedir__srecord_memory
	-$(INSTALL_DIR) $(includedir)/srecord/memory/walker
	@-test -d $(includedir)/srecord/memory/walker && touch $@
	@sleep 1

.mkdir.__includedir__srecord_output: .mkdir.__includedir__srecord
	-$(INSTALL_DIR) $(includedir)/srecord/output
	@-test -d $(includedir)/srecord/output && touch $@
	@sleep 1

.mkdir.__includedir__srecord_output_file: .mkdir.__includedir__srecord_output
	-$(INSTALL_DIR) $(includedir)/srecord/output/file
	@-test -d $(includedir)/srecord/output/file && touch $@
	@sleep 1

.mkdir.__includedir__srecord_quit: .mkdir.__includedir__srecord
	-$(INSTALL_DIR) $(includedir)/srecord/quit
	@-test -d $(includedir)/srecord/quit && touch $@
	@sleep 1

.mkdir.__libdir_:
	-$(INSTALL_DIR) $(libdir)
	@-test -d $(libdir) && touch $@
	@sleep 1

.mkdir.__libdir__pkgconfig: .mkdir.__libdir_
	-$(INSTALL_DIR) $(libdir)/pkgconfig
	@-test -d $(libdir)/pkgconfig && touch $@
	@sleep 1

.mkdir.__mandir_:
	-$(INSTALL_DIR) $(mandir)
	@-test -d $(mandir) && touch $@
	@sleep 1

.mkdir.__mandir__man1: .mkdir.__mandir_
	-$(INSTALL_DIR) $(mandir)/man1
	@-test -d $(mandir)/man1 && touch $@
	@sleep 1

.mkdir.__mandir__man3: .mkdir.__mandir_
	-$(INSTALL_DIR) $(mandir)/man3
	@-test -d $(mandir)/man3 && touch $@
	@sleep 1

.mkdir.__mandir__man5: .mkdir.__mandir_
	-$(INSTALL_DIR) $(mandir)/man5
	@-test -d $(mandir)/man5 && touch $@
	@sleep 1

#
# The srec_cat program.
#
srec_cat_obj = srec_cat/arglex3.lo srec_cat/main.lo

bin/srec_cat: $(srec_cat_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(srec_cat_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

$(bindir)/srec_cat: .mkdir.__bindir_ bin/srec_cat
	$(LIBTOOL) --mode=install $(INSTALL_PROGRAM) bin/srec_cat $@

#
# The srec_cmp program.
#
srec_cmp_obj = srec_cmp/main.lo

bin/srec_cmp: $(srec_cmp_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(srec_cmp_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

$(bindir)/srec_cmp: .mkdir.__bindir_ bin/srec_cmp
	$(LIBTOOL) --mode=install $(INSTALL_PROGRAM) bin/srec_cmp $@

#
# The srec_info program.
#
srec_info_obj = srec_info/main.lo

bin/srec_info: $(srec_info_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(srec_info_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

$(bindir)/srec_info: .mkdir.__bindir_ bin/srec_info
	$(LIBTOOL) --mode=install $(INSTALL_PROGRAM) bin/srec_info $@

#
# The test_arglex_ambiguous program.
#
test_arglex_ambiguous_obj = test/arglex_ambiguous/main.lo

bin/test_arglex_ambiguous: $(test_arglex_ambiguous_obj) .bin \
		srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(test_arglex_ambiguous_obj) srecord/libsrecord.la $(LDFLAGS) \
		$(LIBS)

#
# The test_crc16 program.
#
test_crc16_obj = test/crc16/main.lo

bin/test_crc16: $(test_crc16_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(test_crc16_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

#
# The test_fletcher16 program.
#
test_fletcher16_obj = test/fletcher16/main.lo

bin/test_fletcher16: $(test_fletcher16_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(test_fletcher16_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

#
# The test_gecos program.
#
test_gecos_obj = test/gecos/main.lo

bin/test_gecos: $(test_gecos_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(test_gecos_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

#
# The test_hyphen program.
#
test_hyphen_obj = test/hyphen/main.lo

bin/test_hyphen: $(test_hyphen_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(test_hyphen_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

#
# The test_url_decode program.
#
test_url_decode_obj = test/url_decode/main.lo

bin/test_url_decode: $(test_url_decode_obj) .bin srecord/libsrecord.la
	$(LIBTOOL) --mode=link --tag=CXX $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ \
		$(test_url_decode_obj) srecord/libsrecord.la $(LDFLAGS) $(LIBS)

all: all-bin all-doc

all-bin: bin/srec_cat bin/srec_cmp bin/srec_info bin/test_arglex_ambiguous \
		bin/test_crc16 bin/test_fletcher16 bin/test_gecos \
		bin/test_hyphen bin/test_prelude bin/test_url_decode

all-doc: etc/BUILDING.pdf etc/README.pdf etc/change_log.pdf etc/reference.pdf \
		man/cat1/srec_cat.1 man/cat1/srec_cmp.1 \
		man/cat1/srec_examples.1 man/cat1/srec_info.1 \
		man/cat1/srec_input.1 man/cat1/srec_license.1 \
		man/cat3/srecord.3 man/cat3/srecord_license.3 \
		man/cat5/srec_aomf.5 man/cat5/srec_ascii_hex.5 \
		man/cat5/srec_atmel_generic.5 man/cat5/srec_binary.5 \
		man/cat5/srec_brecord.5 man/cat5/srec_coe.5 \
		man/cat5/srec_cosmac.5 man/cat5/srec_dec_binary.5 \
		man/cat5/srec_emon52.5 man/cat5/srec_fairchild.5 \
		man/cat5/srec_fastload.5 man/cat5/srec_formatted_binary.5 \
		man/cat5/srec_forth.5 man/cat5/srec_fpc.5 man/cat5/srec_idt.5 \
		man/cat5/srec_intel.5 man/cat5/srec_intel16.5 \
		man/cat5/srec_logisim.5 man/cat5/srec_mem.5 \
		man/cat5/srec_mif.5 man/cat5/srec_mips_flash.5 \
		man/cat5/srec_mos_tech.5 man/cat5/srec_motorola.5 \
		man/cat5/srec_msbin.5 man/cat5/srec_needham.5 \
		man/cat5/srec_os65v.5 man/cat5/srec_ppb.5 man/cat5/srec_ppx.5 \
		man/cat5/srec_signetics.5 man/cat5/srec_spasm.5 \
		man/cat5/srec_spectrum.5 man/cat5/srec_stewie.5 \
		man/cat5/srec_tektronix.5 man/cat5/srec_tektronix_extended.5 \
		man/cat5/srec_ti_tagged.5 man/cat5/srec_ti_tagged_16.5 \
		man/cat5/srec_ti_txt.5 man/cat5/srec_trs80.5 \
		man/cat5/srec_vmem.5 man/cat5/srec_wilson.5

.bin:
	-mkdir bin
	-chmod 0755 bin
	@-test -d bin && touch $@
	@sleep 1

check: sure

test_files = t0001a t0002a t0003a t0004a t0005a t0006a t0007a t0008a t0009a \
		t0010a t0011a t0012a t0013a t0014a t0015a t0016a t0017a t0018a \
		t0019a t0020a t0021a t0022a t0023a t0024a t0025a t0026a t0027a \
		t0028a t0029a t0030a t0031a t0032a t0033a t0034a t0035a t0036a \
		t0037a t0037b t0038a t0039a t0040a t0050a t0051a t0052a t0053a \
		t0055a t0056a t0057a t0058a t0059a t0060a t0061a t0062a t0063a \
		t0065a t0066a t0067a t0068a t0069a t0070a t0071a t0072a t0073a \
		t0075a t0076a t0077a t0078a t0079a t0080a t0081a t0082a t0083a \
		t0085a t0086a t0087a t0088a t0089a t0090a t0091a t0092a t0093a \
		t0095a t0096a t0097a t0098a t0099a t0100a t0101a t0102a t0103a \
		t0105a t0106a t0107a t0108a t0109a t0110a t0111a t0112a t0113a \
		t0115a t0116a t0117a t0118a t0119a t0120a t0121a t0122a t0123a \
		t0125a t0126a t0127a t0128a t0129a t0130a t0131a t0132a t0133a \
		t0135a t0136a t0137a t0138a t0139a t0150a t0151a t0152a t0153a \
		t0155a t0156a t0157a t0158a t0159a t0160a t0161a t0162a t0163a \
		t0165a t0166a t0167a t0168a t0169a t0170a t0171a t0172a t0173a \
		t0175a t0176a t0177a t0178a t0179a t0180a t0181a t0182a t0183a \
		t0185a t0186a t0187a t0188a t0189a t0191a t0192a t0193a t0195a \
		t0196a t0197a t0198a t0199a t0200a t0201a t0202a t0203a t0205a \
		t0206a t0207a t0209a t0210a t0211a t0212a t0213a t0215a t0216a \
		t0217a t0218a t0219a t0220a t0221a t0222a t0223a t0225a t0227a \
		t0228a t0229a t0230a t0231a t0232a t0233a t0235a t0236a t0237a \
		t0238a t0239a t0250a t0251a t0253a

sure: $(test_files)
	@echo Passed All Tests

clean: clean-bin clean-doc clean-misc clean-obj

clean-bin:
	rm -f bin/srec_cat bin/srec_cmp bin/srec_info bin/test_arglex_ambiguous
	rm -f bin/test_crc16 bin/test_fletcher16 bin/test_gecos bin/test_hyphen
	rm -f bin/test_prelude bin/test_url_decode

clean-doc:
	rm -f etc/BUILDING.pdf etc/README.pdf etc/change_log.pdf
	rm -f etc/reference.pdf man/cat1/srec_cat.1 man/cat1/srec_cmp.1
	rm -f man/cat1/srec_examples.1 man/cat1/srec_info.1
	rm -f man/cat1/srec_input.1 man/cat1/srec_license.1 man/cat3/srecord.3
	rm -f man/cat3/srecord_license.3 man/cat5/srec_aomf.5
	rm -f man/cat5/srec_ascii_hex.5 man/cat5/srec_atmel_generic.5
	rm -f man/cat5/srec_binary.5 man/cat5/srec_brecord.5 man/cat5/srec_coe.5
	rm -f man/cat5/srec_cosmac.5 man/cat5/srec_dec_binary.5
	rm -f man/cat5/srec_emon52.5 man/cat5/srec_fairchild.5
	rm -f man/cat5/srec_fastload.5 man/cat5/srec_formatted_binary.5
	rm -f man/cat5/srec_forth.5 man/cat5/srec_fpc.5 man/cat5/srec_idt.5
	rm -f man/cat5/srec_intel.5 man/cat5/srec_intel16.5
	rm -f man/cat5/srec_logisim.5 man/cat5/srec_mem.5 man/cat5/srec_mif.5
	rm -f man/cat5/srec_mips_flash.5 man/cat5/srec_mos_tech.5
	rm -f man/cat5/srec_motorola.5 man/cat5/srec_msbin.5
	rm -f man/cat5/srec_needham.5 man/cat5/srec_os65v.5 man/cat5/srec_ppb.5
	rm -f man/cat5/srec_ppx.5 man/cat5/srec_signetics.5
	rm -f man/cat5/srec_spasm.5 man/cat5/srec_spectrum.5
	rm -f man/cat5/srec_stewie.5 man/cat5/srec_tektronix.5
	rm -f man/cat5/srec_tektronix_extended.5 man/cat5/srec_ti_tagged.5
	rm -f man/cat5/srec_ti_tagged_16.5 man/cat5/srec_ti_txt.5
	rm -f man/cat5/srec_trs80.5 man/cat5/srec_vmem.5 man/cat5/srec_wilson.5

clean-misc:
	rm -f .bin .mkdir.__bindir_ .mkdir.__datarootdir_
	rm -f .mkdir.__datarootdir__doc .mkdir.__datarootdir__doc_srecord
	rm -f .mkdir.__includedir_ .mkdir.__includedir__srecord
	rm -f .mkdir.__includedir__srecord_input
	rm -f .mkdir.__includedir__srecord_input_file
	rm -f .mkdir.__includedir__srecord_input_filter
	rm -f .mkdir.__includedir__srecord_input_filter_checksum
	rm -f .mkdir.__includedir__srecord_input_filter_interval
	rm -f .mkdir.__includedir__srecord_input_filter_message
	rm -f .mkdir.__includedir__srecord_input_generator
	rm -f .mkdir.__includedir__srecord_memory
	rm -f .mkdir.__includedir__srecord_memory_walker
	rm -f .mkdir.__includedir__srecord_output
	rm -f .mkdir.__includedir__srecord_output_file
	rm -f .mkdir.__includedir__srecord_quit .mkdir.__libdir_
	rm -f .mkdir.__libdir__pkgconfig .mkdir.__mandir_ .mkdir.__mandir__man1
	rm -f .mkdir.__mandir__man3 .mkdir.__mandir__man5 core etc/BUILDING.pdf
	rm -f etc/README.pdf etc/change_log.pdf etc/debian.png etc/doc_cat.png
	rm -f etc/doc_chip.png etc/doc_gen.png etc/doc_lens.png etc/doc_lib.png
	rm -f etc/reference.pdf etc/srecord.png etc/whining.png

clean-obj:
	rm -f srec_cat/arglex3.lo srec_cat/arglex3.o srec_cat/main.lo
	rm -f srec_cat/main.o srec_cmp/main.lo srec_cmp/main.o srec_info/main.lo
	rm -f srec_info/main.o srecord/adler16.lo srecord/adler16.o
	rm -f srecord/adler32.lo srecord/adler32.o srecord/arglex.lo
	rm -f srecord/arglex.o srecord/arglex/abbreviate.lo
	rm -f srecord/arglex/abbreviate.o srecord/arglex/test_ambiguous.lo
	rm -f srecord/arglex/test_ambiguous.o srecord/arglex/tool.lo
	rm -f srecord/arglex/tool.o srecord/arglex/tool/get_interval.lo
	rm -f srecord/arglex/tool/get_interval.o
	rm -f srecord/arglex/tool/get_interval_small.lo
	rm -f srecord/arglex/tool/get_interval_small.o
	rm -f srecord/arglex/tool/get_number.lo srecord/arglex/tool/get_number.o
	rm -f srecord/arglex/tool/get_string.lo srecord/arglex/tool/get_string.o
	rm -f srecord/arglex/tool/input.lo srecord/arglex/tool/input.o
	rm -f srecord/arglex/tool/output.lo srecord/arglex/tool/output.o
	rm -f srecord/bitrev.lo srecord/bitrev.o srecord/crc16.lo
	rm -f srecord/crc16.o srecord/crc32.lo srecord/crc32.o srecord/defcon.lo
	rm -f srecord/defcon.o srecord/endian.lo srecord/endian.o
	rm -f srecord/endian/decode_word.lo srecord/endian/decode_word.o
	rm -f srecord/fletcher16.lo srecord/fletcher16.o srecord/fletcher32.lo
	rm -f srecord/fletcher32.o srecord/input.lo srecord/input.o
	rm -f srecord/input/catenate.lo srecord/input/catenate.o
	rm -f srecord/input/file.lo srecord/input/file.o
	rm -f srecord/input/file/aomf.lo srecord/input/file/aomf.o
	rm -f srecord/input/file/ascii_hex.lo srecord/input/file/ascii_hex.o
	rm -f srecord/input/file/atmel_generic.lo
	rm -f srecord/input/file/atmel_generic.o srecord/input/file/binary.lo
	rm -f srecord/input/file/binary.o srecord/input/file/brecord.lo
	rm -f srecord/input/file/brecord.o srecord/input/file/cosmac.lo
	rm -f srecord/input/file/cosmac.o srecord/input/file/dec_binary.lo
	rm -f srecord/input/file/dec_binary.o srecord/input/file/emon52.lo
	rm -f srecord/input/file/emon52.o srecord/input/file/fairchild.lo
	rm -f srecord/input/file/fairchild.o srecord/input/file/fastload.lo
	rm -f srecord/input/file/fastload.o
	rm -f srecord/input/file/formatted_binary.lo
	rm -f srecord/input/file/formatted_binary.o
	rm -f srecord/input/file/four_packed_code.lo
	rm -f srecord/input/file/four_packed_code.o srecord/input/file/guess.lo
	rm -f srecord/input/file/guess.o srecord/input/file/hexdump.lo
	rm -f srecord/input/file/hexdump.o srecord/input/file/idt.lo
	rm -f srecord/input/file/idt.o srecord/input/file/intel.lo
	rm -f srecord/input/file/intel.o srecord/input/file/intel16.lo
	rm -f srecord/input/file/intel16.o srecord/input/file/logisim.lo
	rm -f srecord/input/file/logisim.o srecord/input/file/mif.lo
	rm -f srecord/input/file/mif.o srecord/input/file/mips_flash.lo
	rm -f srecord/input/file/mips_flash.o srecord/input/file/mos_tech.lo
	rm -f srecord/input/file/mos_tech.o srecord/input/file/motorola.lo
	rm -f srecord/input/file/motorola.o srecord/input/file/msbin.lo
	rm -f srecord/input/file/msbin.o srecord/input/file/needham.lo
	rm -f srecord/input/file/needham.o srecord/input/file/os65v.lo
	rm -f srecord/input/file/os65v.o srecord/input/file/ppb.lo
	rm -f srecord/input/file/ppb.o srecord/input/file/ppx.lo
	rm -f srecord/input/file/ppx.o srecord/input/file/signetics.lo
	rm -f srecord/input/file/signetics.o srecord/input/file/spasm.lo
	rm -f srecord/input/file/spasm.o srecord/input/file/spectrum.lo
	rm -f srecord/input/file/spectrum.o srecord/input/file/stewie.lo
	rm -f srecord/input/file/stewie.o srecord/input/file/tektronix.lo
	rm -f srecord/input/file/tektronix.o
	rm -f srecord/input/file/tektronix_extended.lo
	rm -f srecord/input/file/tektronix_extended.o
	rm -f srecord/input/file/ti_tagged.lo srecord/input/file/ti_tagged.o
	rm -f srecord/input/file/ti_tagged_16.lo
	rm -f srecord/input/file/ti_tagged_16.o srecord/input/file/ti_txt.lo
	rm -f srecord/input/file/ti_txt.o srecord/input/file/trs80.lo
	rm -f srecord/input/file/trs80.o srecord/input/file/vmem.lo
	rm -f srecord/input/file/vmem.o srecord/input/file/wilson.lo
	rm -f srecord/input/file/wilson.o srecord/input/filter.lo
	rm -f srecord/input/filter.o srecord/input/filter/and.lo
	rm -f srecord/input/filter/and.o srecord/input/filter/bitrev.lo
	rm -f srecord/input/filter/bitrev.o srecord/input/filter/byte_swap.lo
	rm -f srecord/input/filter/byte_swap.o srecord/input/filter/checksum.lo
	rm -f srecord/input/filter/checksum.o
	rm -f srecord/input/filter/checksum/bitnot.lo
	rm -f srecord/input/filter/checksum/bitnot.o
	rm -f srecord/input/filter/checksum/negative.lo
	rm -f srecord/input/filter/checksum/negative.o
	rm -f srecord/input/filter/checksum/positive.lo
	rm -f srecord/input/filter/checksum/positive.o
	rm -f srecord/input/filter/crop.lo srecord/input/filter/crop.o
	rm -f srecord/input/filter/fill.lo srecord/input/filter/fill.o
	rm -f srecord/input/filter/interval.lo srecord/input/filter/interval.o
	rm -f srecord/input/filter/interval/length.lo
	rm -f srecord/input/filter/interval/length.o
	rm -f srecord/input/filter/interval/maximum.lo
	rm -f srecord/input/filter/interval/maximum.o
	rm -f srecord/input/filter/interval/minimum.lo
	rm -f srecord/input/filter/interval/minimum.o
	rm -f srecord/input/filter/message.lo srecord/input/filter/message.o
	rm -f srecord/input/filter/message/adler16.lo
	rm -f srecord/input/filter/message/adler16.o
	rm -f srecord/input/filter/message/adler32.lo
	rm -f srecord/input/filter/message/adler32.o
	rm -f srecord/input/filter/message/crc16.lo
	rm -f srecord/input/filter/message/crc16.o
	rm -f srecord/input/filter/message/crc32.lo
	rm -f srecord/input/filter/message/crc32.o
	rm -f srecord/input/filter/message/fletcher16.lo
	rm -f srecord/input/filter/message/fletcher16.o
	rm -f srecord/input/filter/message/fletcher32.lo
	rm -f srecord/input/filter/message/fletcher32.o
	rm -f srecord/input/filter/message/gcrypt.lo
	rm -f srecord/input/filter/message/gcrypt.o
	rm -f srecord/input/filter/message/stm32.lo
	rm -f srecord/input/filter/message/stm32.o srecord/input/filter/not.lo
	rm -f srecord/input/filter/not.o srecord/input/filter/offset.lo
	rm -f srecord/input/filter/offset.o srecord/input/filter/or.lo
	rm -f srecord/input/filter/or.o srecord/input/filter/random_fill.lo
	rm -f srecord/input/filter/random_fill.o
	rm -f srecord/input/filter/sequence.lo srecord/input/filter/sequence.o
	rm -f srecord/input/filter/split.lo srecord/input/filter/split.o
	rm -f srecord/input/filter/unfill.lo srecord/input/filter/unfill.o
	rm -f srecord/input/filter/unsplit.lo srecord/input/filter/unsplit.o
	rm -f srecord/input/filter/xor.lo srecord/input/filter/xor.o
	rm -f srecord/input/generator.lo srecord/input/generator.o
	rm -f srecord/input/generator/constant.lo
	rm -f srecord/input/generator/constant.o
	rm -f srecord/input/generator/random.lo srecord/input/generator/random.o
	rm -f srecord/input/generator/repeat.lo srecord/input/generator/repeat.o
	rm -f srecord/input/interval.lo srecord/input/interval.o
	rm -f srecord/interval.lo srecord/interval.o
	rm -f srecord/interval/coverage.lo srecord/interval/coverage.o
	rm -f srecord/interval/flatten.lo srecord/interval/flatten.o
	rm -f srecord/libsrecord.a srecord/libsrecord.la srecord/memory.lo
	rm -f srecord/memory.o srecord/memory/chunk.lo srecord/memory/chunk.o
	rm -f srecord/memory/walker.lo srecord/memory/walker.o
	rm -f srecord/memory/walker/adler16.lo srecord/memory/walker/adler16.o
	rm -f srecord/memory/walker/adler32.lo srecord/memory/walker/adler32.o
	rm -f srecord/memory/walker/alignment.lo
	rm -f srecord/memory/walker/alignment.o srecord/memory/walker/compare.lo
	rm -f srecord/memory/walker/compare.o
	rm -f srecord/memory/walker/continuity.lo
	rm -f srecord/memory/walker/continuity.o srecord/memory/walker/crc16.lo
	rm -f srecord/memory/walker/crc16.o srecord/memory/walker/crc32.lo
	rm -f srecord/memory/walker/crc32.o srecord/memory/walker/fletcher16.lo
	rm -f srecord/memory/walker/fletcher16.o
	rm -f srecord/memory/walker/fletcher32.lo
	rm -f srecord/memory/walker/fletcher32.o srecord/memory/walker/gcrypt.lo
	rm -f srecord/memory/walker/gcrypt.o srecord/memory/walker/stm32.lo
	rm -f srecord/memory/walker/stm32.o srecord/memory/walker/writer.lo
	rm -f srecord/memory/walker/writer.o srecord/output.lo srecord/output.o
	rm -f srecord/output/file.lo srecord/output/file.o
	rm -f srecord/output/file/aomf.lo srecord/output/file/aomf.o
	rm -f srecord/output/file/ascii_hex.lo srecord/output/file/ascii_hex.o
	rm -f srecord/output/file/asm.lo srecord/output/file/asm.o
	rm -f srecord/output/file/atmel_generic.lo
	rm -f srecord/output/file/atmel_generic.o srecord/output/file/basic.lo
	rm -f srecord/output/file/basic.o srecord/output/file/binary.lo
	rm -f srecord/output/file/binary.o srecord/output/file/brecord.lo
	rm -f srecord/output/file/brecord.o srecord/output/file/c.lo
	rm -f srecord/output/file/c.o srecord/output/file/coe.lo
	rm -f srecord/output/file/coe.o srecord/output/file/cosmac.lo
	rm -f srecord/output/file/cosmac.o srecord/output/file/dec_binary.lo
	rm -f srecord/output/file/dec_binary.o srecord/output/file/emon52.lo
	rm -f srecord/output/file/emon52.o srecord/output/file/fairchild.lo
	rm -f srecord/output/file/fairchild.o srecord/output/file/fastload.lo
	rm -f srecord/output/file/fastload.o
	rm -f srecord/output/file/formatted_binary.lo
	rm -f srecord/output/file/formatted_binary.o
	rm -f srecord/output/file/forth.lo srecord/output/file/forth.o
	rm -f srecord/output/file/four_packed_code.lo
	rm -f srecord/output/file/four_packed_code.o
	rm -f srecord/output/file/hexdump.lo srecord/output/file/hexdump.o
	rm -f srecord/output/file/idt.lo srecord/output/file/idt.o
	rm -f srecord/output/file/intel.lo srecord/output/file/intel.o
	rm -f srecord/output/file/intel16.lo srecord/output/file/intel16.o
	rm -f srecord/output/file/line_termination.lo
	rm -f srecord/output/file/line_termination.o
	rm -f srecord/output/file/logisim.lo srecord/output/file/logisim.o
	rm -f srecord/output/file/mem.lo srecord/output/file/mem.o
	rm -f srecord/output/file/mif.lo srecord/output/file/mif.o
	rm -f srecord/output/file/mips_flash.lo srecord/output/file/mips_flash.o
	rm -f srecord/output/file/mos_tech.lo srecord/output/file/mos_tech.o
	rm -f srecord/output/file/motorola.lo srecord/output/file/motorola.o
	rm -f srecord/output/file/msbin.lo srecord/output/file/msbin.o
	rm -f srecord/output/file/needham.lo srecord/output/file/needham.o
	rm -f srecord/output/file/os65v.lo srecord/output/file/os65v.o
	rm -f srecord/output/file/ppb.lo srecord/output/file/ppb.o
	rm -f srecord/output/file/ppx.lo srecord/output/file/ppx.o
	rm -f srecord/output/file/signetics.lo srecord/output/file/signetics.o
	rm -f srecord/output/file/spasm.lo srecord/output/file/spasm.o
	rm -f srecord/output/file/spectrum.lo srecord/output/file/spectrum.o
	rm -f srecord/output/file/stewie.lo srecord/output/file/stewie.o
	rm -f srecord/output/file/tektronix.lo srecord/output/file/tektronix.o
	rm -f srecord/output/file/tektronix_extended.lo
	rm -f srecord/output/file/tektronix_extended.o
	rm -f srecord/output/file/ti_tagged.lo srecord/output/file/ti_tagged.o
	rm -f srecord/output/file/ti_tagged_16.lo
	rm -f srecord/output/file/ti_tagged_16.o srecord/output/file/ti_txt.lo
	rm -f srecord/output/file/ti_txt.o srecord/output/file/trs80.lo
	rm -f srecord/output/file/trs80.o srecord/output/file/vhdl.lo
	rm -f srecord/output/file/vhdl.o srecord/output/file/vmem.lo
	rm -f srecord/output/file/vmem.o srecord/output/file/wilson.lo
	rm -f srecord/output/file/wilson.o srecord/output/filter.lo
	rm -f srecord/output/filter.o srecord/output/filter/reblock.lo
	rm -f srecord/output/filter/reblock.o srecord/pretty_size.lo
	rm -f srecord/pretty_size.o srecord/progname.lo srecord/progname.o
	rm -f srecord/quit.lo srecord/quit.o srecord/quit/exception.lo
	rm -f srecord/quit/exception.o srecord/quit/normal.lo
	rm -f srecord/quit/normal.o srecord/quit/prefix.lo srecord/quit/prefix.o
	rm -f srecord/r250.lo srecord/r250.o srecord/record.lo srecord/record.o
	rm -f srecord/stm32.lo srecord/stm32.o srecord/string/quote_c.lo
	rm -f srecord/string/quote_c.o srecord/string/url_decode.lo
	rm -f srecord/string/url_decode.o srecord/string/url_encode.lo
	rm -f srecord/string/url_encode.o srecord/versn_stamp.lo
	rm -f srecord/versn_stamp.o srecord/vsnprintf.lo srecord/vsnprintf.o
	rm -f test/arglex_ambiguous/main.lo test/arglex_ambiguous/main.o
	rm -f test/crc16/main.lo test/crc16/main.o test/fletcher16/main.lo
	rm -f test/fletcher16/main.o test/gecos/main.lo test/gecos/main.o
	rm -f test/hyphen/main.lo test/hyphen/main.o test/url_decode/main.lo
	rm -f test/url_decode/main.o

distclean: clean distclean-directories distclean-files

distclean-files:
	rm -f Makefile config.cache config.log config.status etc/Howto.conf
	rm -f libdir/pkgconfig/srecord.pc script/test_prelude.sh
	rm -f srecord/config.h

distclean-directories:
	rm -rf bin srec_cat/.libs srec_cmp/.libs srec_info/.libs srecord/.libs
	rm -rf srecord/arglex/.libs srecord/arglex/tool/.libs
	rm -rf srecord/endian/.libs srecord/input/.libs srecord/input/file/.libs
	rm -rf srecord/input/filter/.libs srecord/input/filter/checksum/.libs
	rm -rf srecord/input/filter/interval/.libs
	rm -rf srecord/input/filter/message/.libs srecord/input/generator/.libs
	rm -rf srecord/interval/.libs srecord/memory/.libs
	rm -rf srecord/memory/walker/.libs srecord/output/.libs
	rm -rf srecord/output/file/.libs srecord/output/filter/.libs
	rm -rf srecord/quit/.libs srecord/string/.libs
	rm -rf test/arglex_ambiguous/.libs test/crc16/.libs
	rm -rf test/fletcher16/.libs test/gecos/.libs test/hyphen/.libs
	rm -rf test/url_decode/.libs

install: install-bin install-doc install-include install-libdir install-man

install-bin: $(bindir)/srec_cat $(bindir)/srec_cmp $(bindir)/srec_info

install-doc: $(datarootdir)/doc/srecord/BUILDING.pdf \
		$(datarootdir)/doc/srecord/README.pdf \
		$(datarootdir)/doc/srecord/change_log.pdf \
		$(datarootdir)/doc/srecord/reference.pdf

install-include: $(includedir)/srecord/adler16.h \
		$(includedir)/srecord/adler32.h $(includedir)/srecord/crc16.h \
		$(includedir)/srecord/crc32.h $(includedir)/srecord/defcon.h \
		$(includedir)/srecord/endian.h \
		$(includedir)/srecord/fletcher16.h \
		$(includedir)/srecord/fletcher32.h \
		$(includedir)/srecord/format_printf.h \
		$(includedir)/srecord/input.h \
		$(includedir)/srecord/input/catenate.h \
		$(includedir)/srecord/input/file.h \
		$(includedir)/srecord/input/file/aomf.h \
		$(includedir)/srecord/input/file/ascii_hex.h \
		$(includedir)/srecord/input/file/atmel_generic.h \
		$(includedir)/srecord/input/file/binary.h \
		$(includedir)/srecord/input/file/brecord.h \
		$(includedir)/srecord/input/file/cosmac.h \
		$(includedir)/srecord/input/file/dec_binary.h \
		$(includedir)/srecord/input/file/emon52.h \
		$(includedir)/srecord/input/file/fairchild.h \
		$(includedir)/srecord/input/file/fastload.h \
		$(includedir)/srecord/input/file/formatted_binary.h \
		$(includedir)/srecord/input/file/four_packed_code.h \
		$(includedir)/srecord/input/file/intel.h \
		$(includedir)/srecord/input/file/logisim.h \
		$(includedir)/srecord/input/file/mif.h \
		$(includedir)/srecord/input/file/mips_flash.h \
		$(includedir)/srecord/input/file/mos_tech.h \
		$(includedir)/srecord/input/file/msbin.h \
		$(includedir)/srecord/input/file/needham.h \
		$(includedir)/srecord/input/file/os65v.h \
		$(includedir)/srecord/input/file/ppb.h \
		$(includedir)/srecord/input/file/ppx.h \
		$(includedir)/srecord/input/file/signetics.h \
		$(includedir)/srecord/input/file/spasm.h \
		$(includedir)/srecord/input/file/spectrum.h \
		$(includedir)/srecord/input/file/stewie.h \
		$(includedir)/srecord/input/file/tektronix.h \
		$(includedir)/srecord/input/file/tektronix_extended.h \
		$(includedir)/srecord/input/file/ti_tagged.h \
		$(includedir)/srecord/input/file/ti_tagged_16.h \
		$(includedir)/srecord/input/file/ti_txt.h \
		$(includedir)/srecord/input/file/trs80.h \
		$(includedir)/srecord/input/file/vmem.h \
		$(includedir)/srecord/input/file/wilson.h \
		$(includedir)/srecord/input/filter.h \
		$(includedir)/srecord/input/filter/and.h \
		$(includedir)/srecord/input/filter/bitrev.h \
		$(includedir)/srecord/input/filter/byte_swap.h \
		$(includedir)/srecord/input/filter/checksum.h \
		$(includedir)/srecord/input/filter/checksum/bitnot.h \
		$(includedir)/srecord/input/filter/checksum/negative.h \
		$(includedir)/srecord/input/filter/checksum/positive.h \
		$(includedir)/srecord/input/filter/crop.h \
		$(includedir)/srecord/input/filter/fill.h \
		$(includedir)/srecord/input/filter/interval.h \
		$(includedir)/srecord/input/filter/interval/length.h \
		$(includedir)/srecord/input/filter/interval/maximum.h \
		$(includedir)/srecord/input/filter/interval/minimum.h \
		$(includedir)/srecord/input/filter/message.h \
		$(includedir)/srecord/input/filter/message/adler16.h \
		$(includedir)/srecord/input/filter/message/adler32.h \
		$(includedir)/srecord/input/filter/message/crc16.h \
		$(includedir)/srecord/input/filter/message/crc32.h \
		$(includedir)/srecord/input/filter/message/fletcher16.h \
		$(includedir)/srecord/input/filter/message/fletcher32.h \
		$(includedir)/srecord/input/filter/message/gcrypt.h \
		$(includedir)/srecord/input/filter/not.h \
		$(includedir)/srecord/input/filter/offset.h \
		$(includedir)/srecord/input/filter/or.h \
		$(includedir)/srecord/input/filter/random_fill.h \
		$(includedir)/srecord/input/filter/sequence.h \
		$(includedir)/srecord/input/filter/split.h \
		$(includedir)/srecord/input/filter/unfill.h \
		$(includedir)/srecord/input/filter/unsplit.h \
		$(includedir)/srecord/input/filter/xor.h \
		$(includedir)/srecord/input/generator.h \
		$(includedir)/srecord/input/generator/constant.h \
		$(includedir)/srecord/input/generator/random.h \
		$(includedir)/srecord/input/generator/repeat.h \
		$(includedir)/srecord/interval.h \
		$(includedir)/srecord/memory.h \
		$(includedir)/srecord/memory/chunk.h \
		$(includedir)/srecord/memory/walker.h \
		$(includedir)/srecord/memory/walker/compare.h \
		$(includedir)/srecord/memory/walker/continuity.h \
		$(includedir)/srecord/memory/walker/gcrypt.h \
		$(includedir)/srecord/memory/walker/writer.h \
		$(includedir)/srecord/output.h \
		$(includedir)/srecord/output/file.h \
		$(includedir)/srecord/output/file/aomf.h \
		$(includedir)/srecord/output/file/ascii_hex.h \
		$(includedir)/srecord/output/file/asm.h \
		$(includedir)/srecord/output/file/atmel_generic.h \
		$(includedir)/srecord/output/file/basic.h \
		$(includedir)/srecord/output/file/binary.h \
		$(includedir)/srecord/output/file/brecord.h \
		$(includedir)/srecord/output/file/c.h \
		$(includedir)/srecord/output/file/cosmac.h \
		$(includedir)/srecord/output/file/dec_binary.h \
		$(includedir)/srecord/output/file/emon52.h \
		$(includedir)/srecord/output/file/fairchild.h \
		$(includedir)/srecord/output/file/fastload.h \
		$(includedir)/srecord/output/file/formatted_binary.h \
		$(includedir)/srecord/output/file/forth.h \
		$(includedir)/srecord/output/file/four_packed_code.h \
		$(includedir)/srecord/output/file/hexdump.h \
		$(includedir)/srecord/output/file/intel.h \
		$(includedir)/srecord/output/file/intel16.h \
		$(includedir)/srecord/output/file/logisim.h \
		$(includedir)/srecord/output/file/mif.h \
		$(includedir)/srecord/output/file/mips_flash.h \
		$(includedir)/srecord/output/file/mos_tech.h \
		$(includedir)/srecord/output/file/msbin.h \
		$(includedir)/srecord/output/file/needham.h \
		$(includedir)/srecord/output/file/os65v.h \
		$(includedir)/srecord/output/file/ppb.h \
		$(includedir)/srecord/output/file/ppx.h \
		$(includedir)/srecord/output/file/signetics.h \
		$(includedir)/srecord/output/file/spasm.h \
		$(includedir)/srecord/output/file/spectrum.h \
		$(includedir)/srecord/output/file/stewie.h \
		$(includedir)/srecord/output/file/tektronix.h \
		$(includedir)/srecord/output/file/tektronix_extended.h \
		$(includedir)/srecord/output/file/ti_tagged.h \
		$(includedir)/srecord/output/file/ti_tagged_16.h \
		$(includedir)/srecord/output/file/ti_txt.h \
		$(includedir)/srecord/output/file/trs80.h \
		$(includedir)/srecord/output/file/vhdl.h \
		$(includedir)/srecord/output/file/vmem.h \
		$(includedir)/srecord/output/file/wilson.h \
		$(includedir)/srecord/quit.h \
		$(includedir)/srecord/quit/exception.h \
		$(includedir)/srecord/quit/normal.h \
		$(includedir)/srecord/quit/prefix.h \
		$(includedir)/srecord/record.h $(includedir)/srecord/srecord.h \
		$(includedir)/srecord/string.h

#
# The install of the *.la file automatically causes "$(LIBTOOL) --mode=install"
# to install the *.a and *.so* files as well, which is why you don't see them
# explicitly mentioned here.
#
install-libdir: $(libdir)/libsrecord.la $(libdir)/pkgconfig/srecord.pc

install-man: $(mandir)/man1/srec_cat.1 $(mandir)/man1/srec_cmp.1 \
		$(mandir)/man1/srec_examples.1 $(mandir)/man1/srec_info.1 \
		$(mandir)/man1/srec_input.1 $(mandir)/man1/srec_license.1 \
		$(mandir)/man3/srecord.3 $(mandir)/man3/srecord_license.3 \
		$(mandir)/man5/srec_aomf.5 $(mandir)/man5/srec_ascii_hex.5 \
		$(mandir)/man5/srec_atmel_generic.5 \
		$(mandir)/man5/srec_binary.5 $(mandir)/man5/srec_brecord.5 \
		$(mandir)/man5/srec_coe.5 $(mandir)/man5/srec_cosmac.5 \
		$(mandir)/man5/srec_dec_binary.5 $(mandir)/man5/srec_emon52.5 \
		$(mandir)/man5/srec_fairchild.5 $(mandir)/man5/srec_fastload.5 \
		$(mandir)/man5/srec_formatted_binary.5 \
		$(mandir)/man5/srec_forth.5 $(mandir)/man5/srec_fpc.5 \
		$(mandir)/man5/srec_idt.5 $(mandir)/man5/srec_intel.5 \
		$(mandir)/man5/srec_intel16.5 $(mandir)/man5/srec_logisim.5 \
		$(mandir)/man5/srec_mem.5 $(mandir)/man5/srec_mif.5 \
		$(mandir)/man5/srec_mips_flash.5 \
		$(mandir)/man5/srec_mos_tech.5 $(mandir)/man5/srec_motorola.5 \
		$(mandir)/man5/srec_msbin.5 $(mandir)/man5/srec_needham.5 \
		$(mandir)/man5/srec_os65v.5 $(mandir)/man5/srec_ppb.5 \
		$(mandir)/man5/srec_ppx.5 $(mandir)/man5/srec_signetics.5 \
		$(mandir)/man5/srec_spasm.5 $(mandir)/man5/srec_spectrum.5 \
		$(mandir)/man5/srec_stewie.5 $(mandir)/man5/srec_tektronix.5 \
		$(mandir)/man5/srec_tektronix_extended.5 \
		$(mandir)/man5/srec_ti_tagged.5 \
		$(mandir)/man5/srec_ti_tagged_16.5 \
		$(mandir)/man5/srec_ti_txt.5 $(mandir)/man5/srec_trs80.5 \
		$(mandir)/man5/srec_vmem.5 $(mandir)/man5/srec_wilson.5

uninstall:
	rm -f $(bindir)/srec_cat $(bindir)/srec_cmp $(bindir)/srec_info
	rm -f $(datarootdir)/doc/srecord/BUILDING.pdf
	rm -f $(datarootdir)/doc/srecord/README.pdf
	rm -f $(datarootdir)/doc/srecord/change_log.pdf
	rm -f $(datarootdir)/doc/srecord/reference.pdf
	rm -f $(includedir)/srecord/adler16.h $(includedir)/srecord/adler32.h
	rm -f $(includedir)/srecord/crc16.h $(includedir)/srecord/crc32.h
	rm -f $(includedir)/srecord/defcon.h $(includedir)/srecord/endian.h
	rm -f $(includedir)/srecord/fletcher16.h
	rm -f $(includedir)/srecord/fletcher32.h
	rm -f $(includedir)/srecord/format_printf.h
	rm -f $(includedir)/srecord/input.h
	rm -f $(includedir)/srecord/input/catenate.h
	rm -f $(includedir)/srecord/input/file.h
	rm -f $(includedir)/srecord/input/file/aomf.h
	rm -f $(includedir)/srecord/input/file/ascii_hex.h
	rm -f $(includedir)/srecord/input/file/atmel_generic.h
	rm -f $(includedir)/srecord/input/file/binary.h
	rm -f $(includedir)/srecord/input/file/brecord.h
	rm -f $(includedir)/srecord/input/file/cosmac.h
	rm -f $(includedir)/srecord/input/file/dec_binary.h
	rm -f $(includedir)/srecord/input/file/emon52.h
	rm -f $(includedir)/srecord/input/file/fairchild.h
	rm -f $(includedir)/srecord/input/file/fastload.h
	rm -f $(includedir)/srecord/input/file/formatted_binary.h
	rm -f $(includedir)/srecord/input/file/four_packed_code.h
	rm -f $(includedir)/srecord/input/file/intel.h
	rm -f $(includedir)/srecord/input/file/logisim.h
	rm -f $(includedir)/srecord/input/file/mif.h
	rm -f $(includedir)/srecord/input/file/mips_flash.h
	rm -f $(includedir)/srecord/input/file/mos_tech.h
	rm -f $(includedir)/srecord/input/file/msbin.h
	rm -f $(includedir)/srecord/input/file/needham.h
	rm -f $(includedir)/srecord/input/file/os65v.h
	rm -f $(includedir)/srecord/input/file/ppb.h
	rm -f $(includedir)/srecord/input/file/ppx.h
	rm -f $(includedir)/srecord/input/file/signetics.h
	rm -f $(includedir)/srecord/input/file/spasm.h
	rm -f $(includedir)/srecord/input/file/spectrum.h
	rm -f $(includedir)/srecord/input/file/stewie.h
	rm -f $(includedir)/srecord/input/file/tektronix.h
	rm -f $(includedir)/srecord/input/file/tektronix_extended.h
	rm -f $(includedir)/srecord/input/file/ti_tagged.h
	rm -f $(includedir)/srecord/input/file/ti_tagged_16.h
	rm -f $(includedir)/srecord/input/file/ti_txt.h
	rm -f $(includedir)/srecord/input/file/trs80.h
	rm -f $(includedir)/srecord/input/file/vmem.h
	rm -f $(includedir)/srecord/input/file/wilson.h
	rm -f $(includedir)/srecord/input/filter.h
	rm -f $(includedir)/srecord/input/filter/and.h
	rm -f $(includedir)/srecord/input/filter/bitrev.h
	rm -f $(includedir)/srecord/input/filter/byte_swap.h
	rm -f $(includedir)/srecord/input/filter/checksum.h
	rm -f $(includedir)/srecord/input/filter/checksum/bitnot.h
	rm -f $(includedir)/srecord/input/filter/checksum/negative.h
	rm -f $(includedir)/srecord/input/filter/checksum/positive.h
	rm -f $(includedir)/srecord/input/filter/crop.h
	rm -f $(includedir)/srecord/input/filter/fill.h
	rm -f $(includedir)/srecord/input/filter/interval.h
	rm -f $(includedir)/srecord/input/filter/interval/length.h
	rm -f $(includedir)/srecord/input/filter/interval/maximum.h
	rm -f $(includedir)/srecord/input/filter/interval/minimum.h
	rm -f $(includedir)/srecord/input/filter/message.h
	rm -f $(includedir)/srecord/input/filter/message/adler16.h
	rm -f $(includedir)/srecord/input/filter/message/adler32.h
	rm -f $(includedir)/srecord/input/filter/message/crc16.h
	rm -f $(includedir)/srecord/input/filter/message/crc32.h
	rm -f $(includedir)/srecord/input/filter/message/fletcher16.h
	rm -f $(includedir)/srecord/input/filter/message/fletcher32.h
	rm -f $(includedir)/srecord/input/filter/message/gcrypt.h
	rm -f $(includedir)/srecord/input/filter/not.h
	rm -f $(includedir)/srecord/input/filter/offset.h
	rm -f $(includedir)/srecord/input/filter/or.h
	rm -f $(includedir)/srecord/input/filter/random_fill.h
	rm -f $(includedir)/srecord/input/filter/sequence.h
	rm -f $(includedir)/srecord/input/filter/split.h
	rm -f $(includedir)/srecord/input/filter/unfill.h
	rm -f $(includedir)/srecord/input/filter/unsplit.h
	rm -f $(includedir)/srecord/input/filter/xor.h
	rm -f $(includedir)/srecord/input/generator.h
	rm -f $(includedir)/srecord/input/generator/constant.h
	rm -f $(includedir)/srecord/input/generator/random.h
	rm -f $(includedir)/srecord/input/generator/repeat.h
	rm -f $(includedir)/srecord/interval.h $(includedir)/srecord/memory.h
	rm -f $(includedir)/srecord/memory/chunk.h
	rm -f $(includedir)/srecord/memory/walker.h
	rm -f $(includedir)/srecord/memory/walker/compare.h
	rm -f $(includedir)/srecord/memory/walker/continuity.h
	rm -f $(includedir)/srecord/memory/walker/gcrypt.h
	rm -f $(includedir)/srecord/memory/walker/writer.h
	rm -f $(includedir)/srecord/output.h $(includedir)/srecord/output/file.h
	rm -f $(includedir)/srecord/output/file/aomf.h
	rm -f $(includedir)/srecord/output/file/ascii_hex.h
	rm -f $(includedir)/srecord/output/file/asm.h
	rm -f $(includedir)/srecord/output/file/atmel_generic.h
	rm -f $(includedir)/srecord/output/file/basic.h
	rm -f $(includedir)/srecord/output/file/binary.h
	rm -f $(includedir)/srecord/output/file/brecord.h
	rm -f $(includedir)/srecord/output/file/c.h
	rm -f $(includedir)/srecord/output/file/cosmac.h
	rm -f $(includedir)/srecord/output/file/dec_binary.h
	rm -f $(includedir)/srecord/output/file/emon52.h
	rm -f $(includedir)/srecord/output/file/fairchild.h
	rm -f $(includedir)/srecord/output/file/fastload.h
	rm -f $(includedir)/srecord/output/file/formatted_binary.h
	rm -f $(includedir)/srecord/output/file/forth.h
	rm -f $(includedir)/srecord/output/file/four_packed_code.h
	rm -f $(includedir)/srecord/output/file/hexdump.h
	rm -f $(includedir)/srecord/output/file/intel.h
	rm -f $(includedir)/srecord/output/file/intel16.h
	rm -f $(includedir)/srecord/output/file/logisim.h
	rm -f $(includedir)/srecord/output/file/mif.h
	rm -f $(includedir)/srecord/output/file/mips_flash.h
	rm -f $(includedir)/srecord/output/file/mos_tech.h
	rm -f $(includedir)/srecord/output/file/msbin.h
	rm -f $(includedir)/srecord/output/file/needham.h
	rm -f $(includedir)/srecord/output/file/os65v.h
	rm -f $(includedir)/srecord/output/file/ppb.h
	rm -f $(includedir)/srecord/output/file/ppx.h
	rm -f $(includedir)/srecord/output/file/signetics.h
	rm -f $(includedir)/srecord/output/file/spasm.h
	rm -f $(includedir)/srecord/output/file/spectrum.h
	rm -f $(includedir)/srecord/output/file/stewie.h
	rm -f $(includedir)/srecord/output/file/tektronix.h
	rm -f $(includedir)/srecord/output/file/tektronix_extended.h
	rm -f $(includedir)/srecord/output/file/ti_tagged.h
	rm -f $(includedir)/srecord/output/file/ti_tagged_16.h
	rm -f $(includedir)/srecord/output/file/ti_txt.h
	rm -f $(includedir)/srecord/output/file/trs80.h
	rm -f $(includedir)/srecord/output/file/vhdl.h
	rm -f $(includedir)/srecord/output/file/vmem.h
	rm -f $(includedir)/srecord/output/file/wilson.h
	rm -f $(includedir)/srecord/quit.h
	rm -f $(includedir)/srecord/quit/exception.h
	rm -f $(includedir)/srecord/quit/normal.h
	rm -f $(includedir)/srecord/quit/prefix.h $(includedir)/srecord/record.h
	rm -f $(includedir)/srecord/srecord.h $(includedir)/srecord/string.h
	rm -f $(libdir)/libsrecord.a $(libdir)/libsrecord.la
	rm -f $(libdir)/libsrecord.so* $(libdir)/pkgconfig/srecord.pc
	rm -f $(mandir)/man1/srec_cat.1 $(mandir)/man1/srec_cmp.1
	rm -f $(mandir)/man1/srec_examples.1 $(mandir)/man1/srec_info.1
	rm -f $(mandir)/man1/srec_input.1 $(mandir)/man1/srec_license.1
	rm -f $(mandir)/man3/srecord.3 $(mandir)/man3/srecord_license.3
	rm -f $(mandir)/man5/srec_aomf.5 $(mandir)/man5/srec_ascii_hex.5
	rm -f $(mandir)/man5/srec_atmel_generic.5 $(mandir)/man5/srec_binary.5
	rm -f $(mandir)/man5/srec_brecord.5 $(mandir)/man5/srec_coe.5
	rm -f $(mandir)/man5/srec_cosmac.5 $(mandir)/man5/srec_dec_binary.5
	rm -f $(mandir)/man5/srec_emon52.5 $(mandir)/man5/srec_fairchild.5
	rm -f $(mandir)/man5/srec_fastload.5
	rm -f $(mandir)/man5/srec_formatted_binary.5 $(mandir)/man5/srec_forth.5
	rm -f $(mandir)/man5/srec_fpc.5 $(mandir)/man5/srec_idt.5
	rm -f $(mandir)/man5/srec_intel.5 $(mandir)/man5/srec_intel16.5
	rm -f $(mandir)/man5/srec_logisim.5 $(mandir)/man5/srec_mem.5
	rm -f $(mandir)/man5/srec_mif.5 $(mandir)/man5/srec_mips_flash.5
	rm -f $(mandir)/man5/srec_mos_tech.5 $(mandir)/man5/srec_motorola.5
	rm -f $(mandir)/man5/srec_msbin.5 $(mandir)/man5/srec_needham.5
	rm -f $(mandir)/man5/srec_os65v.5 $(mandir)/man5/srec_ppb.5
	rm -f $(mandir)/man5/srec_ppx.5 $(mandir)/man5/srec_signetics.5
	rm -f $(mandir)/man5/srec_spasm.5 $(mandir)/man5/srec_spectrum.5
	rm -f $(mandir)/man5/srec_stewie.5 $(mandir)/man5/srec_tektronix.5
	rm -f $(mandir)/man5/srec_tektronix_extended.5
	rm -f $(mandir)/man5/srec_ti_tagged.5 $(mandir)/man5/srec_ti_tagged_16.5
	rm -f $(mandir)/man5/srec_ti_txt.5 $(mandir)/man5/srec_trs80.5
	rm -f $(mandir)/man5/srec_vmem.5 $(mandir)/man5/srec_wilson.5

.PHONY: all all-bin all-doc check clean clean-bin clean-doc distclean \
		distclean-directories distclean-files install install-bin \
		install-include install-libdir install-mandir sure t0001a \
		t0002a t0003a t0004a t0005a t0006a t0007a t0008a t0009a t0010a \
		t0011a t0012a t0013a t0014a t0015a t0016a t0017a t0018a t0019a \
		t0020a t0021a t0022a t0023a t0024a t0025a t0026a t0027a t0028a \
		t0029a t0030a t0031a t0032a t0033a t0034a t0035a t0036a t0037a \
		t0037b t0038a t0039a t0040a t0050a t0051a t0052a t0053a t0055a \
		t0056a t0057a t0058a t0059a t0060a t0061a t0062a t0063a t0065a \
		t0066a t0067a t0068a t0069a t0070a t0071a t0072a t0073a t0075a \
		t0076a t0077a t0078a t0079a t0080a t0081a t0082a t0083a t0085a \
		t0086a t0087a t0088a t0089a t0090a t0091a t0092a t0093a t0095a \
		t0096a t0097a t0098a t0099a t0100a t0101a t0102a t0103a t0105a \
		t0106a t0107a t0108a t0109a t0110a t0111a t0112a t0113a t0115a \
		t0116a t0117a t0118a t0119a t0120a t0121a t0122a t0123a t0125a \
		t0126a t0127a t0128a t0129a t0130a t0131a t0132a t0133a t0135a \
		t0136a t0137a t0138a t0139a t0150a t0151a t0152a t0153a t0155a \
		t0156a t0157a t0158a t0159a t0160a t0161a t0162a t0163a t0165a \
		t0166a t0167a t0168a t0169a t0170a t0171a t0172a t0173a t0175a \
		t0176a t0177a t0178a t0179a t0180a t0181a t0182a t0183a t0185a \
		t0186a t0187a t0188a t0189a t0191a t0192a t0193a t0195a t0196a \
		t0197a t0198a t0199a t0200a t0201a t0202a t0203a t0205a t0206a \
		t0207a t0209a t0210a t0211a t0212a t0213a t0215a t0216a t0217a \
		t0218a t0219a t0220a t0221a t0222a t0223a t0225a t0227a t0228a \
		t0229a t0230a t0231a t0232a t0233a t0235a t0236a t0237a t0238a \
		t0239a t0250a t0251a t0253a the-default-target

# vim: set ts=8 sw=8 noet :
