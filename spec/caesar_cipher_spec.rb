require './caesar_cipher_for_rspec.rb'

describe 'caesar cipher' do
  it 'shifts string using a positive factor' do
    expect(caesar_cipher('test string', 2)).to eql('vguv uvtkpi')
  end

  it 'shifts string that includes capital letters' do
    expect(caesar_cipher('tEst stRing', 2)).to eql('vGuv uvTkpi')
  end

  it 'shifts string using a negative factor' do
    expect(caesar_cipher('teSt strIng', -9)).to eql('kvJk jkiZex')
  end

  it 'shifts string that contains special characters or punctuation' do
    expect(caesar_cipher('te$t string!', 2)).to eql('vg$v uvtkpi!')
  end

  it 'shifts string that includes numbers' do
    expect(caesar_cipher('te5ting 123 now', 5)).to eql('yj5ynsl 123 stb')
  end
end