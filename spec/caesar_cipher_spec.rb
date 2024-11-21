# frozen_string_literal: true

require 'spec_helper'
require 'caesar_cipher'

RSpec.describe CaesarCipher::Cipher do
  let(:cipher) { described_class.new(3) }

  it 'encodes text correctly' do
    expect(cipher.encode('Hello, World!')).to eq('Khoor, Zruog!')
  end

  it 'decodes text correctly' do
    expect(cipher.decode('Khoor, Zruog!')).to eq('Hello, World!')
  end

  it 'ignores non-alphabetic characters' do
    expect(cipher.encode('12345!@#$%')).to eq('12345!@#$%')
  end
end
