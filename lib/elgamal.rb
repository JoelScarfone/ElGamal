# require 'bigdecimal' unless defined?(BigDecimal)
# require 'stringio'   unless defined?(StringIO)

# if RUBY_VERSION < '1.9.1'
#   # @see http://rubygems.org/gems/backports
#   begin
#     require 'backports/1.9.1'
#   rescue LoadError
#     abort "RSA.rb requires Ruby 1.9.1 or the Backports gem (hint: `gem install backports')."
#   end
# end

# module ElGamal
#   # autoload :Math,    'rsa/math'
#   # autoload :PKCS1,   'rsa/pkcs1'
#   autoload :PrivateKey,     'elgamal/private_key'
#   autoload :PublicKey,     'elgamal/public_key'
#   autoload :KeyPair, 'elgamal/key_pair'
#   # autoload :OpenSSL, 'rsa/openssl'
#   # autoload :VERSION, 'rsa/version'
#   # autoload :KeyPair, 'rsa/version'
# end

require 'openssl'
require_relative 'elgamal/key_pair'
require_relative 'elgamal/private_key'
require_relative 'elgamal/public_key'
require_relative 'elgamal/ciphertext'