require_relative 'ruby_extensions'

describe 'Array extensions' do
  it 'return a list of elements common to both arrays without duplicates' do
    a = [1,1,3,5]
    b = [1,2,3]
    result = a.intersection(b)

    expect(result).to eq [1, 3]
  end

  it 'returns no common element if there is no common elements between the two arrays' do
    a = [1,1,3,5]
    b = [7,9]
    result = a.intersection(b)

    expect(result).to eq []
  end
end