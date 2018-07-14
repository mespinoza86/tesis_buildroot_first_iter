OBJS=phtreadexample.o
LDFLAGS='-pthread'

all:	phtreadexample

phtread_example_1:	$(OBJS)
	$(CC) $(LDFLAGS) -o phtreadexample $(OBJS) 

$(OBJS): %.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $< 
