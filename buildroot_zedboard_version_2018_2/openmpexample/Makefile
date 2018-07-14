OBJS=openmpexample.o
LDFLAGS='-fopenmp'

all:	openmpexample

phtread_example_1:	$(OBJS)
	$(CC) $(LDFLAGS) -o openmpexample $(OBJS) 

$(OBJS): %.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $< 
