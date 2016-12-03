require_relative 'spec_helper.rb'

describe "Basic testing of elgamal" do

	MESSAGE = 123456789

	before(:all) do
		@keypair = ElGamal::KeyPair.new
		@pub_key, @priv_key = @keypair.generate(bits: 512)
	end

	it "should be able to encrypt and decrypt a basic message" do
		ciphertext = @pub_key.encrypt(MESSAGE)
		plaintext = @priv_key.decrypt(ciphertext)
		expect(plaintext).to be(MESSAGE)
	end
	
end