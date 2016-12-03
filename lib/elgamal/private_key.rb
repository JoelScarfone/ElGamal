module ElGamal

	class PrivateKey

		attr_reader :private_a

		def initialize(private_a: nil, public_p: nil)
			@private_a = private_a
			@public_p = public_p
		end

		def decrypt(ciphertext)
			raise ArgumentError unless ciphertext.instance_of? Ciphertext
			ciphertext[1] * (ciphertext[0].to_bn.mod_exp(@private_a, @public_p)).mod_inverse(@public_p) % @public_p 
		end

	end

end

