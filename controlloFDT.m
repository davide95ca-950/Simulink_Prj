clearvars, clc, close all
s = tf('s');

%Definizione dei parametri del sistema
theta = pi/12;
betatheta1 = 300;
d = 6.5;
betatheta2 = 450;
betav = 500;
J = 235000;
M = 63200;
T = (M * 9.81) / cos(theta);

%Definizione delle componenti della matrice della dinamica
a = 0;
b = 1;
c = 0;
v = 0;

e = 0;
f = (-1/M) * betav * sin(theta) * sin(theta);
g = (-1/M) * T * sin(theta);
h = 0;

i = 0;
j = 0;
k = 0;
l = 1;

m = 0;
n = 0;
o = (1/J) * (T * d * cos(theta) - betatheta2 * cos(theta));
p = (-1/J) * betatheta1; 

% Definizione della matrice della dinamica
A = [a, b, c, v;...
     e, f, g, h;...
     i, j, k, l;...
     m, n, o, p];

%Definizione della matrice d'ingresso
B = [0; (1/M) * cos(theta); 0; (1/J) * d * sin(theta)];

%Definizione della matrice di uscita
C = [1, 0, 0, 0];

%Definizione della matrice diretta
D = 0;

%Definizione della funzioni di trasferimento del sistema non retroazionato 
G = C * (s * eye(size(A)) - A)^(-1) * B + D;
G = minreal(G, 1e-2);
G = zpk(G)

%Definizione della funzione di trasferimento del primo controllore
%1st controller — transfer function
Ci = importdata("Ci.mat");
Ci = zpk(Ci)

%Definizione della funzione di trasferimento del primo anello di 
%retroazione
Gi = (G * Ci) / (1 + G * Ci);
Gi = minreal(Gi, 1e-2);
Gi = zpk(Gi)
isstable(Gi)

%Definizione della funzione di trasferimento del secondo controllore
%2nd controller — transfer function
C = importdata("C_A.mat");


C = zpk(C)

%Definizione della funzione di trasferimento del secondo anello di
%retroazione
Gc = (Gi * C) / (1 + Gi * C);
Gc = minreal(Gc, 1e-02);
Gc = zpk(Gc)
isstable(Gc)

%Crezione dei modelli in forma di stato da fornire a Simulink
Cc =  ss(C);
Cis = ss(Ci);
Go =  ss(G);
