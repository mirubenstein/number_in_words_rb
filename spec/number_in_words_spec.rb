require ('rspec')
require ('number_in_words')

describe :number_in_words do

  it 'returns word for number up to 19' do
    expect(number_in_words(17)).to eq('seventeen')
  end

  it 'returns word for number up to 99' do
    expect(number_in_words(88)).to eq('eighty eight')
  end

  it 'returns word for number up to 999' do
    expect(number_in_words(287)).to eq('two hundred eighty seven')
  end
  it 'returns word for a number greater 999 by using scale' do
    expect(number_in_words(1000481)).to eq('one million four hundred eighty one')
  end
end
