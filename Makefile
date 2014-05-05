
CC      = g++
PROF    = -lpthread
DEBUG   = -g
NOCRYPT = 
O_FLAGS = -O
C_FLAGS = $(O_FLAGS) -Wall $(DEBUG) $(PROF) $(NOCRYPT) 
L_FLAGS = $(O_FLAGS)                $(PROF) -lcrypt
O_FILES = SeeedOLED.o main.o

install: $(O_FILES)
	$(CC) $(O_FILES) $(DEBUG) $(L_FLAGS) -o oled 

.c.o: SeeedOLED.h
	$(CC) -c $(C_FLAGS) $<

clean:
	rm -f *.o 
	rm -f oled
