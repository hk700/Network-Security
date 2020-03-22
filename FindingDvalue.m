

function [g, d, y] = FindingDvalue(a, b)

g=0;
d=0;
[g,d,y]=gcd(a,b);
                       % ax + by = g = gcd(a, b)
if g==1                %Coprimes' GCD must be 1.  
  d=mod(d,b);
else
    disp('Not primes');
   
end

