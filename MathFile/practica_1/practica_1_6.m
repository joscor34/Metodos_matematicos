# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1 ejercici 6: Determinación de funciones ortogonales

pkg load symbolic

clear all; 
clc;

syms x;
%% Definición del ejercicio 6

f1 = exp(x);
f2 = sin(x);

%% Desarrollo de la integral
#int -> es para integrar algo 
resultado1 = int(f1*f2, pi/4,5*(pi/4));
disp('El valor de la integral es: '), disp(resultado1);

if(resultado1 == 0)
  disp('Son ortogonales en el intervalo');
else 
  disp('No son ortogonales en el intervalo');
end