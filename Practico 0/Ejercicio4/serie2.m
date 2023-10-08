#Escribir una funci´on serie que reciba una funci´on f y un natural N y devuelva la suma parcial de F(x) hasta N.
function result = serie2(f,R)
    result = 0;
    i = 1
    while f(i) >= R
        result = result + f(i);
        i++;
    endwhile
endfunction

# Para pasar una funcion (ejemplo x^2) como parametro se debe hacer de la siguiente manera
# serie(@(x) x^2, N)