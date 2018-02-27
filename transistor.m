
function[Ids,Vds] = transistor(Vth,Vgs,Vds,K,plot) #ask to plot true or false
  n=1;
  Ids = [];
  Vdsat = Vgs-Vth; 
  while (n <= columns(Vds))                          		 #parcour la matrice
    B = Vds(1,n);                                        #prend la valeur dans la matrice a la position (1,n)
    if B <= Vdsat                                   	   #compare avec les condition correspondant a un transistor en régime linéaire
      Ids =[Ids (K*(((Vgs-Vth)*B)-(0.5*(B)^2)))];        #équation d un transistor en régime linéaire, ajoute la réponse a la matrice Ids
      endif
    if B > Vdsat                                   			 #compare avec les condition correspondant a un transistor en régime de saturation
      Ids =[Ids ((K/2)*(Vgs-Vth)^2)];                 	 #équation d un transistor en régime de saturation, ajoute la réponse a la matrice Ids
      endif
    n++;              
    endwhile
    if plot == true
      plotmos(Vth,Vgs,Vds,K,Ids)
    endif
endfunction

#{ 
exemple:;
Vth = 1;
Vgs = 5;
K = 6;
Vds = [0:0.001:5];
[Ids,Vds] = transistor(Vth,Vgs,Vds,K,true)    plot : true or false
#}