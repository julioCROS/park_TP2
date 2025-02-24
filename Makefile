
CC=g++
OPCOES_COMPILADOR= -lsfml-audio -I. -I/../SOIL -lglut -lGLU -lGLEW -lGL -lSOIL -lm
TODOS_ARQUIVOS_PONTOH = libs/glm.h libs/sgi.h libs/glmint.h
TODOS_ARQUIVOS_OBJ = park.o libs/sgi.o libs/glm.o libs/glmimg.o libs/glm_util.o 

%.o: ../%.c $(TODOS_ARQUIVOS_PONTOH)
	$(CC) -o $@ -c $< $(OPCOES_COMPILADOR)

all: $(TODOS_ARQUIVOS_OBJ)
	g++ -o park $^ $(OPCOES_COMPILADOR)

REQUIEM: all
	./park

clean:
	rm *.o park
