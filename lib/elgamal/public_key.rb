module ElGamal

	class PublicKey

		attr_reader :public_p,
					:public_g,
					:public_h

		def initialize(public_p: nil, public_g: nil, public_h: nil)
			@public_p = public_p
			@public_g = public_g
			@public_h = public_h
		end

		def encrypt(message)
			rand_k = rand(@public_p - 1) + 1
			element_a = @public_g.to_bn.mod_exp(rand_k, @public_p).to_i
			element_b = message * @public_h.to_bn.mod_exp(rand_k, @public_p).to_i % @public_p
			return ElGamal::Ciphertext.new([element_a, element_b])
		end

	end

end