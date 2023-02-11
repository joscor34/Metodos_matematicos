# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1 ejercici 3: Determinación de funciones ortogonales

pkg load symbolic

clear all; 
clc;

[~, id] = lastwarn()
id = OctSymPy:sym:rationalapprox
S = warning('off', id);


syms x;

%% Definición del ejercicio 3

f1 = exp(x);
f2 = (x*exp(-x))-(exp(-x));

%% Desarrollo de la integral
#int -> es para integrae algo 
resultado1 = int(f1*f2,-0,2);
disp('El valor de la integral es: '), disp(resultado1);

if(resultado1 == 0)
  disp('Son ortogonales en el intervalo');
else 
  disp('No son ortogonales en el intervalo');
end