/*funcion que devuelve uno si el numero es primo y cero si no lo es*/
#include <stdio.h>
#include <stdlib.h>

int primo(int i){

	int control=0, j=2;

	while(j<i){ 

		if(i%j==0){control=control+1; j++;}
		else{j++;}

	}

	if(control!=0){return 0;}
	else{return 1;}

}
