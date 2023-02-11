# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1 ejercici 5: Determinación de funciones ortogonales

pkg load symbolic

clear all; 
clc;

syms x e;
%% Definición del ejercicio 5

f1 = x;
f2 = cos(2*x);

%% Desarrollo de la integral
#int -> es para integrae algo 
resultado1 = int(f1*f2,-pi/2,pi/2);
disp('El valor de la integral es: '), disp(resultado1);

if(resultado1 == 0)
  disp('Son ortogonales en el intervalo');
else 
  disp('No son ortogonales en el intervalo');
end