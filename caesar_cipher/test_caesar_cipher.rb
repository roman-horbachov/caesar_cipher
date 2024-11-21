require 'caesar_cipher'

cipher = CaesarCipher::Cipher.new(3)
encoded = cipher.encode("Hello, World!")
puts "Encoded: #{encoded}" # Очікується: Khoor, Zruog!

decoded = cipher.decode(encoded)
puts "Decoded: #{decoded}" # Очікується: Hello, World!
