# Ximena Chavez Pinacho
# 26/02/2023
# Practica 2 ejercici 4: Determinación de grupos de funciones ortogonales y su normalidad

pkg load symbolic

clear all; 
clc;

syms x;

n = 1
m = 3
p = pi

resultado_ortogonal = int(sin((m*pi*x)/p) * sin((n*pi*x)/p), 0, p);
resultado_normal = sqrt(int((sin((m*pi*x)/p))^2, 0, p));

if(resultado_ortogonal == 0)
  disp("Tu función es ortogonal y la normal es: ");
  disp(resultado_normal);

else 
  disp("Tu función no es ortigonal y la normal es: ");
  disp(resultado_normal);
endif
