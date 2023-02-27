# Ximena Chavez Pinacho
# 26/02/2023
# Practica 2 ejercici 1: Determinación de grupos de funciones ortogonales y su normalidad

pkg load symbolic

clear all; 
clc;

syms x;

m = 1;
n = 5;

resultado_ortogonal = int(sin((2*m + 1) * x) * sin((2*n + 1) * x), 0, pi/2);
resultado_normal = sqrt(int((sin((2*n + 1) * x ))^2, 0, pi/2));

if(resultado_ortogonal == 0)
  disp("Tu función es ortogonal y la normal es: ");
  disp(resultado_normal);

else 
  disp("Tu función no es ortigonal y la normal es: ");
  disp(resultado_normal);
endif