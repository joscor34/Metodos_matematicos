# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1 ejemplo: Determinación de funciones ortogonales

pkg load symbolic

syms x;

%% Definición de las funciones de ejemplo

f1 = x^2;
f2 = x^3;

%% Desarrollo de la integral
#int -> es para integrae algo 
resultado1 = int(f1*f2,-1,1);
disp('El valor de la integral es: '), disp(resultado1);

if(resultado1 == 0)
  disp('Son ortogonales en el intervalo');
else 
  disp('No son ortogonales en el intervalo');
end
