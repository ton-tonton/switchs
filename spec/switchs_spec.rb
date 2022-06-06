# frozen_string_literal: true

RSpec.describe Switchs do
  it 'has a version number' do
    expect(Switchs::VERSION).not_to be nil
  end

  it 'return string with the same length' do
    str = 'foobarbaz'
    expect(Switchs.exec(str).size).to eq(str.size)
  end

  it 'random string position', retry: 3 do
    str = 'fooooooooooooooooooooo'
    expect(Switchs.exec(str)[0]).not_to eq('f')
  end
end
