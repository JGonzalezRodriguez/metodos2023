# Modificar la funci´on maximo del ejercicio anterior para que reciba una matriz A y devuelva el
# elemento m´aximo de A.

function maximo = result(A)
  maximo = A(1,1);
  for i = 1:rows(A)
    for j = 1:columns(A)
      if A(i,j) > maximo
        maximo = A(i,j);
      endif
    endfor
  endfor