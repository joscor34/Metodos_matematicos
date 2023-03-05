from sympy import *
import time
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import numpy as np

x = symbols('x')

f_x = Piecewise((-1, x < 0), (2, x >= 0))
fser = fourier_series(f_x, (x, -pi, pi))

print('El valor de a0 es: ')
pprint(fser.a0 * 2)
print('Los valor de an cuando n se evalua n hasta infinito pueden ser: ')
pprint(fser.an)
print('Los valor de bn cuando n se evalua n hasta infinito pueden ser: ')
pprint(fser.bn)

f_n = []
iteraciones = int(input("Cuantas iteraciones quiere para la serie de Fourier: "))

f1 = lambdify(x, f_x, 'numpy')

for  i in range(1, iteraciones+2):
  f_n.append(lambdify(x, fser.truncate(n=i)))

xs = np.linspace(-5,5,100)

ax = plt.gca()
ax.spines['top'].set_color('none')
ax.spines['bottom'].set_position('zero')
ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')

plt.ion()
line_1 = plt.plot(xs, f1(xs), label='función original')
plt.title("Graficas de las funciones")
plt.show()

for j in range(1, len(f_n)):
  line_2 = plt.plot(xs, f_n[j](xs), label='n= ' + str(j))
  plt.draw()
  plt.pause(0.001)
  plt.legend(loc='best')
  input("Press [enter] to continue.")
  line = line_2.pop(0)
  line.remove()

plt.legend(loc='best')

plt.show()
