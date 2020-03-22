function Ciphertext = Encrypt(Modulus, encryptionExponent, Message)
%This function is to Encrypt plain texts.


    e = (encryptionExponent);
    m = (Message);
    n = (Modulus);

        
    c=mod((m.^e),n);

    Ciphertext=c;
    
    intC= int64(Ciphertext);

    



end

