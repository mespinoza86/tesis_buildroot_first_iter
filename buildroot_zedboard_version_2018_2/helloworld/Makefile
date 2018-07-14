OBJS=helloworld.o

all:	helloworld

helloworld:	$(OBJS)
	$(CC) $(LDFLAGS) -o helloworld $(OBJS)

$(OBJS): %.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $<
