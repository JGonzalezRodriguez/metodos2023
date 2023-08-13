% Escribir una funcion llamada sustitucion que reciba como parametros una matriz A, un vector
% fila v y un numero natural n, y devuelva la matriz A luego de sustituir la fila n por el vector v.

function result = substitucion(A, v, n)
  A(n, :) = v;
  result = A;
endfunction

% yapa:
% iterar sobre una matriz
%for i = 1:size(A, 1)
  %row = A(i, :);
%end