function ej11()
  
  ordenes = [5, 10];

  for n = ordenes
    disp("#####################################################################");
    disp(["##################### Hilbert de Orden " num2str(n) " ###########################"]);
    disp("#####################################################################");

    % parte a
    H = hilb(n);
    x = ones(n, 1);
    b = H * x;

    x_computado = H \ b;

    % parte b
    e = x - x_computado;
    r = b - H*x_computado;

    disp("error:");
    disp(e);

    disp("residuo:");
    disp(r);

    disp("Norma 1 del error:");
    disp(norm(e, 1));

    disp("Norma 2 del error:");
    disp(norm(e, 2));

    disp("Norma infinito del error:");
    disp(norm(e, inf));

    disp("Norma 1 del residuo:");
    disp(norm(r, 1));

    disp("Norma 2 del residuo:");
    disp(norm(r, 2));

    disp("Norma infinito del residuo:");
    disp(norm(r, inf));
    
    % parte c
    H_inv = invhilb(n);

    disp("##### Numero de condicion de H subordinada a la norma 1 ####")
    calc_cond_norma_1 = cond(H, 1)
    calc_directo_norma_1 = norm(H, 1)*norm(H_inv, 1)
    disp("usando comando 'cond':");
    disp(calc_cond_norma_1);
    disp("usando cálculo directo:");
    disp(calc_directo_norma_1)

    disp("##### Numero de condicion de H subordinada a la norma 2 ####")
    calc_cond_norma_2 = cond(H, 2)
    calc_directo_norma_2 = norm(H, 2)*norm(H_inv, 2)
    disp("usando comando 'cond':");
    disp(calc_cond_norma_2);
    disp("usando cálculo directo:");
    disp(calc_directo_norma_2)

    disp("##### Numero de condicion de H subordinada a la norma inf ####")
    calc_cond_norma_inf = cond(H, inf)
    calc_directo_norma_inf = norm(H, inf)*norm(H_inv, inf)
    disp("usando comando 'cond':");
    disp(calc_cond_norma_inf);
    disp("usando cálculo directo:");
    disp(calc_directo_norma_inf)
    
  end 
end
