# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1 ejercici 2: Determinación de funciones ortogonales

pkg load symbolic

clear all; 
clc;

syms x;

%% Definición del ejercicio 2

f1 = x^3;
f2 = x^2;

%% Desarrollo de la integral
#int -> es para integrae algo 
resultado1 = int(f1*f2,-1,1);
disp('El valor de la integral es: '), disp(resultado1);

if(resultado1 == 0)
  disp('Son ortogonales en el intervalo');
else 
  disp('No son ortogonales en el intervalo');
end