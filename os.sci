//Ankita Keshari, B,Tech (ECE)
//Function: Overshoot
//input arguments: N(numerator of second order system),a,b,c(Coefficients of s^2, s^1, s^0 in the denominator))
//output arguments: L(transfer function),wn,epsilon(damping factor), wd, Mp(Percentage overshoot)

function[L,wn,epsilon,wd,Mp]=mpos(N,a,b,c)//function declared

s= poly(0, "s")//specify a polynomial using variable 's' using existing poly() function of Scilab
L=syslin ('c', (N/a)/{s^2}+{(b*s)/a}+(c/a)) //Transfer Function is specified using existing syslin()function of Scilab and the input arguments
wn=(b/a)^0.5//The value of wn is calculated
epsilon=(b/a)/(2*wn)//Damping Factor(epsilon) is calculated
wd={wn*((1-(epsilon^2))^0.5)}//wd is calculated
Mp=100*exp(-{(epsilon*%pi)/({1-(epsilon^2)}^0.5)//Maximum percentage Overshoot(MPOS) is calculated

endfunction

//Example:

//N=20;
//a=1;
//b=7;
//c=25;
//[L1,wn1,epsilon1,wd1,Mp1]=mpos(N,a,b,c)
//L1  =
 
           // 2    3  
    //20 + 25s + 7s   
    //-------------   
           //  2        
          //s         
//wn1=5
//epsilon1=0.7
//wd1=3.57
//Mp1=4.606

//Sources:1.http://spoken-tutorial.org/tutorial-search/?search_foss=Scilab&search_language=English
//2.http://in.mathworks.com/help/comm/functionlist.html
//3.http://www.ece.rutgers.edu/~gajic/psfiles/chap6.pdf
//4. Control Systems:Theory and Applications by Samarjit Ghosh
//5.https://help.scilab.org/docs/5.5.2/en_US/index.html
//6.http://nptel.ac.in/courses/101108047/module4/Lecture%2010.pdf
