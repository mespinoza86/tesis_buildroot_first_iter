# Use the Open MPI-provided wrapper compilers.

MPICC = mpicc
MPICXX = mpic++
MPIFC = mpifort
MPIJAVAC = mpijavac
SHMEMCC = shmemcc
SHMEMCXX = shmemc++
SHMEMFC = shmemfort

# Using -g is not necessary, but it is helpful for example programs,
# especially if users want to examine them with debuggers.  Note that
# gmake requires the CXXFLAGS macro, while other versions of make
# (such as Sun's make) require the CCFLAGS macro.

CFLAGS += -g
CXXFLAGS += -g
CCFLAGS += -g
FCFLAGS += -g

# Example programs to build
# The usual "clean" target

clean:
	rm -f $(EXAMPLES) *~ *.o

# Don't rely on default rules for the Fortran and Java examples

OBJS=helloworldmpi.o

all:	helloworldmpi
helloworldmpi:	$(OBJS)
	$(MPICC) $(LDFLAGS) -o helloworldmpi $(OBJS)

$(OBJS): %.o:	%.c
	$(MPICC) $(CFLAGS) -c -o $@ $<
