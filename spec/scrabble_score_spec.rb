require 'rspec'
require 'scrabble_score'

describe 'String#scrabble_score' do

  it "returns 1 for the value of a" do
    expect(("a").scrabble_score()).to(eq(1))
  end

  it "returns the correct value for letters worth one point." do
    expect('roulet'.scrabble_score()).to eq 6
  end

  it "returns the correct value for any word given" do
    expect("adbfkjq".scrabble_score()).to eq 33
  end

  it "returns the correct value for uppercase words" do
    expect("LIZZIE".scrabble_score()).to eq 24
  end

end
