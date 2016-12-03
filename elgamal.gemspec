Gem::Specification.new do |s|
  s.name        = 'elgamal'
  s.version     = '0.0.4'
  s.date        = '2016-12-01'
  s.summary     = "Basic ruby ElGamal implementation."
  s.description = "Basic ruby ElGamal implementation. Used to do basic encryption and decryption."
  s.authors     = ["Joel Scarfone"]
  s.email       = 'joel.scarfone@carleton.ca'
  s.files       =  ["lib/elgamal.rb", 
                    "lib/elgamal/ciphertext.rb",
                    "lib/elgamal/key_pair.rb",
                    "lib/elgamal/private_key.rb",
                    "lib/elgamal/public_key.rb"]
  s.homepage    = 'https://github.com/JoelScarfone/ElGamal'
  s.license     = 'MIT'
end