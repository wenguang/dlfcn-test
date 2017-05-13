
main:libxxx.so main.c
	gcc main.c -L./ -lxxx -o main
libxxx.so:xxx.h xxx.c
	gcc -fPIC -shared xxx.c -o libxxx.so

.PHONY:clean
clean:
	rm main libxxx.so