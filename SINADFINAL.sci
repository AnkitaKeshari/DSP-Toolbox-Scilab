//Ankita Keshari, B.Tech (ECE)
//Function: SINAD
//input arguments: n,p(amplitude of cos function), q(amplitude of first harmonic), r(variance of Additive White Gaussian Noise)
//output arguments: x,y(signals have a fundamental frequency of  pi/4 rad/sample with amplitude 1 and the first harmonic of frequency  pi/2 rad/sample with amplitude 0.025, r(One of the signals additionally has additive white Gaussian noise with variance  0.05^2)

function[x,y,ss]= sinad(n,p,q,r)//Function declared
    x = p*cos(%pi/4*n)+q*sin(%pi/2*n)//First signal 
    y = p*cos(%pi/4*n)+q*sin(%pi/2*n)+r*rand((n),"normal")//Second signal with AWGN
    s=log10([(p^2)+(q^2)+(r^2)]/[(q^2)+(r^2)])//SINAD is calculated for signal
    ss=10*s//SINAD *10 according to formula
endfunction //End of Function

//Example:
//n=1
 //n  =
 
   // 1.  
 
//-1->p=1
// p  =
 
//    1.  
 
//-1->q=0.025
// q  =
 
//    0.025  
 
//-1->r=0.05
// r  =
 
//    0.05  
 
//-1->[x1,y1,ss1]=sinad(n,p,q,r)
// ss1  =
 
//    25.06505  
// y1  =
 
//    0.6940243  
// x1  =
 
//    0.7321068  
 
//Sources Used: 1.http://spoken-tutorial.org/tutorial-search/?search_foss=Scilab&search_language=English
//2.http://in.mathworks.com/help/comm/functionlist.html 
//3.https://help.scilab.org/docs/5.5.2/en_US/index.html
//4.http://www.analog.com/media/en/training-seminars/tutorials/MT-003.pdf
//5.http://www.radio-electronics.com/info/rf-technology-design/rf-noise-sensitivity/sinad.php
