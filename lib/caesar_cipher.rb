# lib/caesar_cipher.rb
# frozen_string_literal: true

require_relative "caesar_cipher/version"

module CaesarCipher
  class Cipher
    def initialize(shift)
      @shift = shift % 26
    end

    def encode(text)
      text.chars.map { |char| shift_char(char, @shift) }.join
    end

    def decode(text)
      text.chars.map { |char| shift_char(char, -@shift) }.join
    end

    private

    def shift_char(char, shift)
      case char
      when 'A'..'Z'
        ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
      when 'a'..'z'
        ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
      else
        char
      end
    end
  end
end
