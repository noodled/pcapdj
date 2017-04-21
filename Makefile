pcapdj:		pcapdj.o
	gcc -Wall -o pcapdj pcapdj.o -lwiretap `pkg-config --libs glib-2.0` -lpcap -lhiredis -lzmq -ggdb
pcapdj.o:	pcapdj.c
	gcc -Wall -c pcapdj.c `pkg-config --cflags glib-2.0` -I /usr/include/wireshark/wiretap -I /usr/include/wireshark/wsutil -I /usr/include/wireshark `pkg-config --libs glib-2.0` -I /usr/local/include/hiredis -ggdb

clean:
	-rm pcapdj
	-rm *.o
