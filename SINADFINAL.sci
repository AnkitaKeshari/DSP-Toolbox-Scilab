function[x,y,ss]= sinad(n,p,q,r)
    x = p*cos(%pi/4*n)+q*sin(%pi/2*n)
    y = p*cos(%pi/4*n)+q*sin(%pi/2*n)+r*rand((n),"normal")
    s=log10([(p^2)+(q^2)+(r^2)]/[(q^2)+(r^2)])
    ss=10*s
    endfunction
 
 
