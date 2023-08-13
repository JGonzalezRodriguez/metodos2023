# Escribir una funcion llamada intercambio que reciba como parametros una matriz A y naturales
# n y m, y devuelva la matriz A luego de intercambiar las filas n y m

# this function takes in a matrix and two natural numbers and returns the matrix with the rows n and m swapped
function result = intercambio(A, n, m)
    result = A;
    result(n, :) = A(m, :);
    result(m, :) = A(n, :);
endfunction
