# ElGamal

ElGamal is a basic ruby library that allows for basic encryption and decryption following principals outlined in the ElGamal public key encryption scheme.


### Requirements

A relevant version of ruby installed. 

### Installation

```sh
$ gem install elgamal
```

Or get the source code located at https://github.com/JoelScarfone/ElGamal.

### Usage
First, include the library. Then, generate a keypair.
```sh
$ require 'elgamal'
$
$ keypair = ElGamal::KeyPair.new
$ pub_key, priv_key = keypair.generate
```

Anyone can encrypt with the public key, only the person with the private key can decrypt, unless the discrete logarithm problem has been solved.

```sh
$ priv_key.decrypt(pub_key.encrypt(12345)) 
=> 12345
```

### Notes

Note that the safe prime p is randomly generated. You map specify the number of bits used in the generation of this prime. You may also override the 'k' and 'a' values generated randomly, that are used to encrypt and decrypt respectfully.

I would also in no way use this in a real implementation or call this secure in any way. I simply needed to make this library because i could not find a ruby implementation that i needed for a project. There has been little usage and testing of this library.

### Development

Want to contribute? Great! Everything is on github at https://github.com/JoelScarfone/ElGamal.

Copyright (c) 2016 Joel Scarfone, released under the MIT license
