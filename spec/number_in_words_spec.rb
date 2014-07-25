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
  it 'big number returns the written big number' do
    expect(number_in_words(900004565464645645645645645645647465678584585678567858696979679678967000)).to eq('nine hundred duovigintillion four unvigintillion five hundred sixty five vigintillion four hundred sixty four novemdecillion six hundred forty five octodecillion six hundred forty five septendecillion six hundred forty five sexdecillion six hundred forty five quindecillion six hundred forty five quattuordecillion six hundred forty five tredecillion six hundred forty seven duodecillion four hundred sixty five undecillion six hundred seventy eight decillion five hundred eighty four nonillion five hundred eighty five octillion six hundred seventy eight septillion five hundred sixty seven sextillion eight hundred fifty eight quintrillion six hundred ninety six quadrillion nine hundred seventy nine trillion six hundred seventy nine billion six hundred seventy eight million nine hundred sixty seven thousand')
  end
end
