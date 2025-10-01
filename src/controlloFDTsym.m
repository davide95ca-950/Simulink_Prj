clearvars, clc, close all
syms theta_ betatheta1_ d_ betatheta2_ betav_ J_ M_ T_  s
%s = tf('s');
a = 0;
b = 1;
c = 0;
v = 0;

e = 0;
f = ((-1/M_)*betav_*sin(theta_)*sin(theta_));
g = -(1/M_)*(T_*sin(theta_));
h = 0;

i = 0;
j = 0;
k = 0;
l = 1;

m = 0;
n = 0;
o = (1/(J_))*(T_*d_*cos(theta_)-betatheta2_*cos(theta_));
p = ((-1/(J_))*betatheta1_); 



% Definisci la matrice simbolica 4x4
A = [a, b, c, v; e, f, g, h; i, j, k, l; m, n, o, p];

B = [0;...
    (1/(M_))*cos(theta_);...
     0;...
     (1/(J_))*d_*sin(theta_)];

C = [1, 0, 0, 0];
D = 0;

G = C * (s * eye(4) - A)^(-1) * B + D;
G = simplify(G)











