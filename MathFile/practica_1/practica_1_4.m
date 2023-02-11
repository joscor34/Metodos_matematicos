# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1 ejercici 4: Determinación de funciones ortogonales

pkg load symbolic

clear all; 
clc;

syms x;

%% Definición del ejercicio 4

f1 = cos(x);
f2 = sin(x)^2;

%% Desarrollo de la integral
#int -> es para integrae algo 
resultado1 = int(f1*f2,0,pi);
disp('El valor de la integral es: '), disp(resultado1);

if(resultado1 == 0)
  disp('Son ortogonales en el intervalo');
else 
  disp('No son ortogonales en el intervalo');
end