function Message = Decrypt(Modulus, decryptionExponent, Ciphertext)
%This function is to decrypt ciphertexts

    d = (decryptionExponent);
    c = int64(Ciphertext);
    n = (Modulus);





    Message = mod((c.^d),n);
    
    intM=int64(Message);



end

