function dx = sispend(t, x)
    ip = 0.0079;
    mc = 0.7031;
    lp = 0.3302;
    mp = 0.23;
    fc = 0; 
    beq = 4.3; 
    g = 9.81;
    bp = 0.0024;
    
    xc = x(1);
    xcp = x(2);
    alfa = x(3);
    alfap = x(4);

    div = (mc + mp)*ip + mc*mp*lp^2 + mp^2*lp^2*sin(alfa)^2;

    xcpp = ((ip+mp*lp^2)*fc + mp^2*lp^2*g*cos(alfa)*sin(alfa) - (ip+mp*lp^2)*beq*xcp - (ip*mp*lp - mp^2*lp^3)*alfap^2*sin(alfa) - mp*lp*alfap*cos(alfa)*bp)/div;
    alfapp = ((mc+mp)*mp*g*lp*sin(alfa) - (mc+mp)*bp*alfap + fc*mp*lp*cos(alfa) - mp^2*lp^2*alfap^2*sin(alfa)*cos(alfa) - beq*mp*lp*xcp*cos(alfa))/div;
    
    dx = zeros(4, 1);
    dx(1) = xcp;
    dx(2) = xcpp;
    dx(3) = alfap;
    dx(4) = alfapp; 
end





  
  