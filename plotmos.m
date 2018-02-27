
function [] = plotmos(Vth,Vgs,Vds,K,Ids)
    Vdsat = Vgs-Vth; 
    plot(Vds,Ids) 									                      #trace le graphique des valeur de Ids en fonction de Vds
    title("Ids en fonction de Vds d'un transistor MOS")		#donne un nom au graphique
    xlabel("Vds [V]")								#nome les axes 
    ylabel("Ids [mA]")   								
    text(0.2,48,['Vdsat = ', num2str(Vdsat)," V"])			  #ajout des valeurs remarquable sur le graphique
    text(0.2,46,['Vgs = ', num2str(Vgs)," V"])
    text(0.2,44,['Vth = ', num2str(Vth)," V"])
    text(0.2,42,['K = ', num2str(K)," mA/V^2 "])
endfunction

#{ 
exemple:;
Vth = 1;
Vgs = 5;
K = 6;
Vds = [0:1:5];
Ids = transistor(Vth,Vgs,Vds,K,false);
plotmos(Vth,Vgs,Vds,K,Ids) ;
#}

