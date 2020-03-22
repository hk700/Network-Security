
clc
clear
close all

Text            = 'RSA';
Message         = (Text);

fprintf('-Input-\n')
fprintf('Original message:       ''%s''\n', Text)
fprintf('Integer representation: %s\n', num2str(int64(Message)))

%% Create two prime numbers
[Modulus,encryptionExponent,phi]=Primes;

fprintf('\n-Key Pair-\n')
fprintf('Modulus:                '), fprintf('%5d\n', Modulus)
fprintf('public exponent:        '), fprintf('%5d\n', encryptionExponent)
fprintf('phi:                    '), fprintf('%5d\n', phi)

%% Encrypt / Decrypt
[~, decryptionExponent, ~] = FindingDvalue(encryptionExponent, phi);

fprintf('Private exponent:       '), fprintf('%5d\n', decryptionExponent)

Ciphertext = Encrypt(Modulus, encryptionExponent, Message);
Message = Decrypt(Modulus, decryptionExponent, Ciphertext);

fprintf('Encrypted Message:       %s [ "%s" ]\n', num2str(Ciphertext), char(Ciphertext))

fprintf('Decrypted Message:       %s [ "%s" ]\n', num2str(Message), char(Message))

