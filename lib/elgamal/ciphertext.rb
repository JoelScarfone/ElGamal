module ElGamal

	class Ciphertext

		def initialize(ciphertext)
			raise ArgumentError.new("Required a tuple input, eg. [123,456]") unless ciphertext.class == Array and ciphertext.length == 2
			@ciphertext = ciphertext
		end

		def to_s
			"#{@ciphertext}"
		end

		def [](pos)
			return @ciphertext[pos]
		end
	end

end