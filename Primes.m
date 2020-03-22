function [Modulus,encrytionExponent,phi]=Primes


%Generate random odd number

randodd1=2*randi([3 100])-1;
randodd2=2*randi([3 100])-1;

%Generate random number

randnumber1=randi([3 100]);
randnumber2=randi([3 100]);

%To check randodd is prime

z1= mod(randnumber1.^(randodd1-1),randodd1); 
z2= mod(randnumber2.^(randodd2-1),randodd2); 

%Repeat until z1 and z2==1
if z1~=1    
    
    while z1~=1
    
    
   randodd1=2*randi([3 20])-1;
    
    randnumber1=randi([3 100]);
   
    z1= mod(randnumber1^(randodd1-1),randodd1);
    
    end
    
end

   if z2~=1
       
       while z2~=1
        
        randnumber2=randi([3 100]);
        
        randodd2=2*randi([3 20])-1;
        
        z2= mod(randnumber2^(randodd2-1),randodd2);
       end
   end
   
           
    
%Now, those randomodd numbers are primes
p=randodd1; q=randodd2;

%To calculate n=pq

n=p*q;

%To calculate phi(n)

phi=(p-1)*(q-1);

%To choose e that are relatively prime to phi
    for i = 3: 2  : phi - 1
        if gcd(i, phi) == 1
            e = i;
            break
        end
    end

   encrytionExponent=e;
   Modulus=n;
   
   
   
   
end

    