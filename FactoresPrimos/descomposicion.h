/*Funcion que factoriza en factores primos*/
#include <stdio.h>
#include <stdlib.h>
#include </opt/FactoresPrimos/primo.h>

void descomposicion(int n){

	int i=2;

	printf("\nIntroduzca el numero a descomponer en factores primos, para salir introduzca cero: ");
	scanf("%d", &n);

	while (n){

		printf("\nLos factores primos de %d son (por orden creciente): ", n);

		while(n){

			if(primo(i)==1){

				if(n%i==0){

					printf("%d, ", i);
					n=n/i;

					if(n==1){n=0;}

				}

				else{i++;}

			}

			else{i++;}

		}

		i=2;
		printf("\nSi desea calcular los factores primos de otro numero, introduzcalo, en caso contrario introduzca cero: ");
		scanf("%d", &n);

	}

}
