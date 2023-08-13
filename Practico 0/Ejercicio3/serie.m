#Escribir una funci´on serie que reciba una funci´on f y un natural N y devuelva la suma parcial de F(x) hasta N.
function serie = result(f,N)
    serie = 0;
    for i = 1:N
        serie = serie + f(i);
    endfor
endfunction

# Para pasar una funcion (ejemplo x^2) como parametro se debe hacer de la siguiente manera
# serie(@(x) x^2, N)