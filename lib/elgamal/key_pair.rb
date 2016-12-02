module ElGamal

	class KeyPair

		def initialize(public_key: nil, private_key: nil)
			@public_key = public_key
			@private_key = private_key
		end

		def generate(bits: 20, a: nil)
			p = OpenSSL::BN::generate_prime(bits).to_i
			g = (rand * p).to_i
			a ||= (rand * (p - 1)).to_i + 1
			h = g.to_bn.mod_exp(a, p).to_i
			return ElGamal::PublicKey.new(public_p: p, public_g: g, public_h: h), 
				   ElGamal::PrivateKey.new(private_a: a, public_p: p)
		end

	end

end