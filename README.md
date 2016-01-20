# SP-Toolbox-Scilab

First Function: SINAD

SINAD is the measure of the quality of a signal from a communication device.
In MATLAB, the sinad() function is used to find out the sinad, i.e signal and noise distortion ratio. 
The same function had to be created in Scilab, hence referred to the formula for calculating SINAD which is:

SINAD= P(signal) + P(noise) + P(distortion)
      --------------------------------------
             P(noise) + P(distortion)

Algorithm and Execution for created function:
1. Input arguments: n,p(amplitude of cos function), q(amplitude of first harmonic), r(variance of Additive White Gaussian Noise)
2. Output arguments: x,y(signals have a fundamental frequency of pi/4 rad/sample with amplitude 1 and the first harmonic of frequency  pi/2 rad/sample with amplitude 0.025, 
		     r(One of the signals additionally has additive white Gaussian noise with variance  0.05^2)
3. x is specified as a noisefree input and y has AWGN along with it.
4. s calculates the sinad for the input values.
5. To execute code, call function. Specify the value of n, p,q,r.(Specified above)

Example:
n=1
 n  =
 
    1.  
 
p=1
 p  =
 
    1.  
 
q=0.025
 q  =
 
    0.025  
 
r=0.05
 r  =
 
    0.05  
 
[x1,y1,ss1]=sinad(n,p,q,r)
 ss1  =
 
    25.06505  
 y1  =
 
    0.6940243  
 x1  =
 
    0.7321068  
 
Sources Used: 
1.http://spoken-tutorial.org/tutorial-search/?search_foss=Scilab&search_language=English
2.http://in.mathworks.com/help/comm/functionlist.html 
3.https://help.scilab.org/docs/5.5.2/en_US/index.html
4.http://www.analog.com/media/en/training-seminars/tutorials/MT-003.pdf
5.http://www.radio-electronics.com/info/rf-technology-design/rf-noise-sensitivity/sinad.php

=================================================

Second Function: OVERSHOOT


In signal processing, overshoot is the occurrence of a signal or function exceeding its target. It arises especially in the step response of bandlimited systems such as low-pass filters.
In MATLAB the stepinfo() function specifies the Overshoot of a system along with various other parameters.
The same had to be recreated in SCILAB. The function has been created here to find the maximum percentage overshoot or MPOS for a system of order 2.
The formulae that were followed are:

T(s)= 	    (wn)^2
     ---------------------
     (s^2)+(2*epsilon*wn)+(wn^2)

wn=(b)^0.5 (b is the coefficient of s^1)

epsilon=(b)/(2*wn) //Damping Factor(epsilon) is calculated

wd={wn*((1-(epsilon^2))

Mp=100*exp(-{(epsilon*%pi)/({1-(epsilon^2)}^0.5) // Maximum Percentage Overshoot is calculated.

Algorithm for created function:
1.Input arguments: N(numerator of second order system),a,b,c(Coefficients of s^2, s^1, s^0 in the denominator))
2.Output arguments: L(transfer function),wn,epsilon(damping factor), wd, Mp(Percentage overshoot)
3.poly() function is used after function declaration to specify a polynomial of variable s.
4.syslin() is used for a continuous function to specify the coefficients of the two-order system.
5.Formulae for MPOS and other related parameters are specified.
6. To execute code, call function after specifying the input arguments(specified above).

Example:

Example:

N=20;
N  =
 
    20.  
a=1;
a  =
 
    1.  
b=7;
b  =
 
    7.  
c=25;
c  =
 
    25.  
[L1,wn1,epsilon1,wd1,Mp1]=mpos(N,a,b,c)
L1  =
 
            2    3  
    20 + 25s + 7s   
    -------------   
           2        
          s         

wn1  =
 
    5  
 epsilon1  =
 
    0.7  
 wd1  =
 
    3.57
Mp1  =
 
    4.606  

Sources:

1.http://spoken-tutorial.org/tutorial-search/?search_foss=Scilab&search_language=English
2.http://in.mathworks.com/help/comm/functionlist.html
3.http://www.ece.rutgers.edu/~gajic/psfiles/chap6.pdf
4. Control Systems:Theory and Applications by Samarjit Ghosh
5.https://help.scilab.org/docs/5.5.2/en_US/index.html
6.http://nptel.ac.in/courses/101108047/module4/Lecture%2010.pdf

