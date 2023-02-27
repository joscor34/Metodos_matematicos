# Ximena Chavez Pinacho
# 26/02/2023
# Practica 2 ejercici 6: Determinación de grupos de funciones ortogonales y su normalidad

pkg load symbolic

clear all; 
clc;

syms x;

n = 1
m = 3
p = pi

resultado_ortogonal_1 = int(cos((n*pi*x)/p), -1*p, p);
resultado_normal_1 = sqrt(2*p);

resultado_ortogonal_2 = int(sin((m*pi*x)/p) * cos((n*pi*x)/p), -1*pi, p);
resultado_normal_2 = sqrt(int((cos((m*pi*x)/p))^2, -1*p, p));

resultado_ortogonal_3 = int(cos((n*pi*x)/p) * sin((m*pi*x)/p), -1*pi, p);
resultado_normal_3 = sqrt(int((sin((m*pi*x)/p))^2, -1*p, p));


if(resultado_ortogonal_1 == 0)
  disp("Tu función 1 es ortogonal y la normal es: ");
  disp(resultado_normal_1);

else 
  disp("Tu función 1 no es ortogonal y la normal es: ");
  disp(resultado_normal_1);
endif

#----------------------------------------------------------------

if(resultado_ortogonal_2 == 0)
  disp("Tu función 2 es ortogonal y la normal es: ");
  disp(resultado_normal_2);

else 
  disp("Tu función 2 no es ortogonal y la normal es: ");
  disp(resultado_normal_2);
endif

#–---------------------------------------------------------------

if(resultado_ortogonal_3 == 0)
  disp("Tu función 3 es ortogonal y la normal es: ");
  disp(resultado_normal_1);

else 
  disp("Tu función 3 no es ortogonal y la normal es: ");
  disp(resultado_normal_3);
endif