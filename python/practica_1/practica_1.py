# José Eduardo Esteva Córdova
# 10/02/2023
# Practica 1: Determinación de funciones ortogonales

import sympy as smp
from mpmath import *

x = smp.symbols('x')


print('----- Funcion de ejemplo -----')
#print(mp.e)
func1 = x**2
func2 = x**3
resultado = smp.integrate(func1*func2, (x, -1, 1))
if(resultado == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')


print('----- Funcion 1 -----')
#print(mp.e)
func1 = x
func2 = x**2
resultado = smp.integrate(func1*func2, (x, -2, 2))
if(resultado == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')

print('----- Funcion 2 -----')
#print(mp.e)
func1 = x**3
func2 = x**2 + 1
resultado = smp.integrate(func1*func2, (x, -1, 1))
if(resultado == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')

print('----- Funcion 3 -----')
#print(mp.e)
func1 = (mp.e)**x
func2 = x*((mp.e**-x) - mp.e**-x)
resultado = smp.integrate(func1*func2, (x, 0, 2))
if(resultado == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')

print('----- Funcion 4 -----')
#print(mp.e)
func1 = smp.cos(x)
func2 = smp.sin(x)**2
resultado = smp.integrate(func1*func2, (x, 0, mp.pi))
if(round(resultado) == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')

print('----- Funcion 5 -----')
#print(mp.e)
func1 = x
func2 = smp.cos(2*x)
resultado = smp.integrate(func1*func2, (x, -(mp.pi/2), (mp.pi/2)))
if(resultado == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')


print('----- Funcion 6 -----')
#print(mp.e)
func1 = (mp.e)**x
func2 = smp.sin(x)
resultado = smp.integrate(func1*func2, (x, (smp.pi/4), (5*smp.pi/4)))
if(resultado == 0):
  print('El resultado es: 0 y es ortogonal')
else: 
  print('El resultado es: ' + str(resultado)+ ' y no es ortogonal')
