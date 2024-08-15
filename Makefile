# Note: I recommend compiling with 'make -j' (since many template instantiations are compiled)
# Note: 'make one' will compile a single template instantiation (to avoid the full 'make -j' deluge)

ARCH =
ARCH += -gencode arch=compute_80,code=sm_80
ARCH += -gencode arch=compute_86,code=sm_86
# ARCH += -gencode arch=compute_89,code=sm_89
# ARCH += -gencode arch=compute_90,code=sm_90

GPUTILS_INCDIR=../gputils/include
GPUTILS_LIBDIR=../gputils/lib
INSTALL_DIR ?= /usr/local

NVCC=nvcc -std=c++17 $(ARCH) -m64 -O3 -I$(GPUTILS_INCDIR) --compiler-options -Wall,-fPIC
SHELL := /bin/bash

.DEFAULT_GOAL: all
.PHONY: all one asm clean install .FORCE

HFILES = \
  include/n2k.hpp \
  include/n2k_kernel.hpp

# Kernel filename syntax is kernel_{nstations}_{nfreq}.o
OFILES = \
  src/Correlator.o \
  src/kernel_table.o \
  src/make_rfimask.o \
  src/precompute_offsets.o \
  src/s0_kernel.o \
  src/sk_globals.o \
  template_instantiations/kernel_128_1.o \
  template_instantiations/kernel_128_2.o \
  template_instantiations/kernel_128_4.o \
  template_instantiations/kernel_128_8.o \
  template_instantiations/kernel_128_16.o \
  template_instantiations/kernel_128_32.o \
  template_instantiations/kernel_128_64.o \
  template_instantiations/kernel_128_128.o \
  template_instantiations/kernel_128_256.o \
  template_instantiations/kernel_128_384.o \
  template_instantiations/kernel_128_512.o \
  template_instantiations/kernel_128_1024.o \
  template_instantiations/kernel_128_2048.o \
  template_instantiations/kernel_1024_1.o \
  template_instantiations/kernel_1024_2.o \
  template_instantiations/kernel_1024_4.o \
  template_instantiations/kernel_1024_8.o \
  template_instantiations/kernel_1024_16.o \
  template_instantiations/kernel_1024_32.o \
  template_instantiations/kernel_1024_48.o \
  template_instantiations/kernel_1024_64.o \
  template_instantiations/kernel_1024_128.o \
  template_instantiations/kernel_2048_16.o

# "Special" kernel, used in special targets 'make one' and 'make asm'.
SPKERN = 1024_16

LIBFILES = \
  lib/libn2k.so

XFILES = \
  test-correlator \
  time-correlator \
  test-make-rfimask \
  test-s0-kernel \
  test-sk-bias \
  scratch

# Used in 'make clean', 'make source_files.txt'
SRCDIRS = . include src template_instantiations

all: $(LIBFILES) $(XFILES)

# Compile only the "special" kernel. Useful when debugging, to avoid the 'make -j all' deluge.
one: template_instantiations/kernel_$(SPKERN).o

# Generate ptx and sass for the "special" kernel.
asm: template_instantiations/kernel_$(SPKERN).ptx template_instantiations/kernel_$(SPKERN).sass

# Not part of 'make all', needs explicit 'make source_files.txt'
source_files.txt: .FORCE
	rm -f source_files.txt
	shopt -s nullglob && for d in $(SRCDIRS); do for f in $$d/*.cu $$d/*.hpp $$d/*.cuh; do echo $$f; done; done >$@

clean:
	rm -f $(XFILES) source_files.txt *~ template_instantiations/*.cu
	shopt -s nullglob && for d in $(SRCDIRS); do rm -f $$d/*~ $$d/*.o $$d/*.ptx $$d/*.sass; done

%.o: %.cu $(HFILES)
	$(NVCC) -c -o $@ $<

%.ptx: %.o
	cuobjdump -ptx $< > $@

%.sass: %.o
	cuobjdump -sass $< > $@

template_instantiations/kernel_%.cu: template_instantiations/make-instantiation.py
	$< $@

lib/libn2k.so: $(OFILES)
	@mkdir -p lib
	rm -f $@
	$(NVCC) -shared -o $@ $^

#lib/libn2k.a: $(OFILES)
#	@mkdir -p lib
#	rm -f $@
#	ar rcs $@ $^
#	ranlib $@

test-correlator: src/test-correlator.o lib/libn2k.so $(GPUTILS_LIBDIR)/libgputils.so
	$(NVCC) -o $@ $^

time-correlator: src/time-correlator.o lib/libn2k.so $(GPUTILS_LIBDIR)/libgputils.so
	$(NVCC) -o $@ $^

test-make-rfimask: src/test-make-rfimask.o lib/libn2k.so $(GPUTILS_LIBDIR)/libgputils.so
	$(NVCC) -o $@ $^

test-s0-kernel: src/test-s0-kernel.o lib/libn2k.so $(GPUTILS_LIBDIR)/libgputils.so
	$(NVCC) -o $@ $^

test-sk-bias: src/test-sk-bias.o lib/libn2k.so $(GPUTILS_LIBDIR)/libgputils.so
	$(NVCC) -o $@ $^

scratch: src/scratch.o $(OFILES) lib/libn2k.so $(GPUTILS_LIBDIR)/libgputils.so
	$(NVCC) -o $@ $^

install: $(LIBFILES)
	mkdir -p $(INSTALL_DIR)/include
	mkdir -p $(INSTALL_DIR)/lib
	cp -rv lib $(INSTALL_DIR)/
	cp -rv include $(INSTALL_DIR)/

# I prefer not to have 'make' autodelete its autogenerated source files
.PRECIOUS: template_instantiations/kernel_%.cu
